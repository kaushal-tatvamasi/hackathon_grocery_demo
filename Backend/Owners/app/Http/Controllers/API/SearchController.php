<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Service;
use App\Models\Vendor;

class SearchController extends Controller
{
    //
    public function index(Request $request)
    {

        $products = [];
        $vendors = [];
        $services = [];
        $searchResult = null;

        //
        $tags = [];
        if ($request->tags) {
            if (!is_array($request->tags)) {
                $tags = json_decode($request->tags, true) ?? [];
            } else {
                $tags = $request->tags;
            }

            //
            if(!is_array($tags)){
                $tags = [$tags];
            }
        }

        //
        if (empty($request->type) || $request->type == "product") {

            $products = $searchResult = Product::active()->when($request->filter == "best", function ($query) {
                return $query->withCount('sales')->orderBy('sales_count', 'DESC');
            })
                ->when($request->filter == "you", function ($query) {

                    if (auth('sanctum')->user()) {
                        return $query->whereHas('purchases')->withCount('purchases')->orderBy('purchases_count', 'DESC');
                    } else {
                        return $query->inRandomOrder();
                    }
                })
                ->when($request->keyword, function ($query) use ($request) {
                    return $query->where('name', "like", "%" . $request->keyword . "%");
                })
                ->when($request->category_id, function ($query) use ($request) {
                    return $query->whereHas("categories", function ($query) use ($request) {
                        return $query->where('category_id', "=", $request->category_id);
                    });
                })
                ->when($request->vendor_id, function ($query) use ($request) {
                    return $query->where('vendor_id', $request->vendor_id);
                })
                ->when($request->vendor_type_id, function ($query) use ($request) {
                    return $query->whereHas("vendor", function ($query) use ($request) {
                        return $query->where('vendor_type_id', "=", $request->vendor_type_id);
                    });
                })
                ->when($request->sort, function ($query) use ($request) {
                    return $query->orderBy('name', $request->sort);
                })
                ->when($request->min_price, function ($query) use ($request) {
                    return $query->where('price', ">=", $request->min_price);
                })
                ->when($request->max_price, function ($query) use ($request) {
                    return $query->where('price', "<=", $request->max_price);
                })
                //tag search
                ->when(!empty($tags), function ($query) use ($tags) {
                    return $query->whereHas('tags', function ($query) use ($tags) {
                        return $query->whereIn('id', $tags);
                    });
                })
                ->paginate();

            //
        } else if ($request->type == "service") {

            $services = $searchResult = Service::active()->when($request->type == "best", function ($query) {
                return $query->withCount('sales')->orderBy('sales_count', 'DESC');
            })
                ->when($request->keyword, function ($query) use ($request) {
                    return $query->where('name', "like", "%" . $request->keyword . "%");
                })
                ->when($request->category_id, function ($query) use ($request) {
                    return $query->where('category_id', "=", $request->category_id);
                })
                ->when($request->is_open, function ($query) use ($request) {
                    return $query->where('is_open', "=", $request->is_open);
                })
                ->when($request->vendor_type_id, function ($query) use ($request) {
                    return $query->whereHas('vendor', function ($query) use ($request) {
                        return $query->active()->where('vendor_type_id', $request->vendor_type_id);
                    });
                })
                ->when($request->vendor_id, function ($query) use ($request) {
                    return $query->where('vendor_id', $request->vendor_id);
                })
                ->when($request->sort, function ($query) use ($request) {
                    return $query->orderBy('name', $request->sort);
                })
                ->when($request->min_price, function ($query) use ($request) {
                    return $query->where('price', ">=", $request->min_price);
                })
                ->when($request->max_price, function ($query) use ($request) {
                    return $query->where('price', "<=", $request->max_price);
                })
                ->paginate();
        } else {
            //
            $latitude = $request->latitude;
            $longitude = $request->longitude;

            $vendors = $searchResult = Vendor::active()
                ->when($request->keyword, function ($query) use ($request) {
                    return $query->where('name', "like", "%" . $request->keyword . "%");
                })
                ->when($request->is_open, function ($query) use ($request) {
                    return $query->where('is_open', "=", $request->is_open);
                })
                ->when($request->category_id, function ($query) use ($request) {
                    return $query->whereHas("categories", function ($query) use ($request) {
                        return $query->where('category_id', "=", $request->category_id);
                    });
                })
                ->when($request->vendor_type_id, function ($query) use ($request) {
                    return $query->where('vendor_type_id', "=", $request->vendor_type_id);
                })
                ->when($latitude, function ($query) use ($latitude, $longitude) {
                    return $query->distance($latitude, $longitude)
                        ->havingRaw("delivery_range >= distance");
                })
                ->when($request->sort, function ($query) use ($request) {
                    return $query->orderBy('name', $request->sort);
                })
                ->paginate();
        }

        //
        if (!$request->has('merge')) {
            return response()->json([
                "products" => $products,
                "vendors" => $vendors,
                "services" => $services,
            ], 200);
        } else {

            return response()->json($searchResult, 200);
        }
    }
}

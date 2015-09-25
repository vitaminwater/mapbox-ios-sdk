Pod::Spec.new do |m|

  m.name    = 'Mapbox-iOS-SDK'
  m.version = '1.6.1'

  m.summary          = 'An open source toolset for building mapping applications for iOS devices.'
  m.description      = 'An open source toolset for building mapping applications for iOS devices with great flexibility for visual styling, offline use, and customizability.'
  m.homepage         = 'https://mapbox.com/mapbox-ios-sdk'
  m.license          = 'BSD'
  m.author           = { 'Mapbox' => 'mobile@mapbox.com' }
  m.screenshot       = 'https://raw.github.com/mapbox/mapbox-ios-sdk/packaging/screenshot.png'
  m.social_media_url = 'https://twitter.com/Mapbox'

  m.source = {
    :git => 'https://github.com/mapbox/mapbox-ios-sdk.git',
    :tag => m.version.to_s
  }

  m.platform              = :ios
  m.ios.deployment_target = '5.0'
  m.requires_arc          = true

  m.module_name = 'Mapbox_iOS_SDK'

  m.source_files = 'Proj4/proj_api.h', 'MapView/Map/*.{h,c,m}'

  m.prefix_header_file = 'MapView/MapView_Prefix.pch'

  m.public_header_files = [
    'MapView/Map/Mapbox.h', 'MapView/Map/RMAbstractMercatorTileSource.h', 'MapView/Map/RMAbstractWebMapSource.h', 'MapView/Map/RMAnnotation.h', 'MapView/Map/RMAttributionViewController.h', 'MapView/Map/RMBingSource.h', 'MapView/Map/RMCacheObject.h', 'MapView/Map/RMCircle.h', 'MapView/Map/RMCircleAnnotation.h', 'MapView/Map/RMCompositeSource.h', 'MapView/Map/RMConfiguration.h', 'MapView/Map/RMCoordinateGridSource.h', 'MapView/Map/RMDBMapSource.h', 'MapView/Map/RMDatabaseCache.h', 'MapView/Map/RMFoundation.h', 'MapView/Map/RMFractalTileProjection.h', 'MapView/Map/RMGenericMapSource.h', 'MapView/Map/RMGlobalConstants.h', 'MapView/Map/RMGreatCircleAnnotation.h', 'MapView/Map/RMInteractiveSource.h', 'MapView/Map/RMLoadingTileView.h', 'MapView/Map/RMMBTilesSource.h', 'MapView/Map/RMMapLayer.h', 'MapView/Map/RMMapOverlayView.h', 'MapView/Map/RMMapQuestOSMSource.h', 'MapView/Map/RMMapQuestOpenAerialSource.h', 'MapView/Map/RMMapScrollView.h', 'MapView/Map/RMMapTiledLayerView.h', 'MapView/Map/RMMapView.h', 'MapView/Map/RMMapViewDelegate.h', 'MapView/Map/RMMapboxSource.h', 'MapView/Map/RMMarker.h', 'MapView/Map/RMMemoryCache.h', 'MapView/Map/RMNotifications.h', 'MapView/Map/RMOpenCycleMapSource.h', 'MapView/Map/RMOpenSeaMapLayer.h', 'MapView/Map/RMOpenSeaMapSource.h', 'MapView/Map/RMOpenStreetMapSource.h', 'MapView/Map/RMPixel.h', 'MapView/Map/RMPointAnnotation.h', 'MapView/Map/RMPolygonAnnotation.h', 'MapView/Map/RMPolylineAnnotation.h', 'MapView/Map/RMProjection.h', 'MapView/Map/RMQuadTree.h', 'MapView/Map/RMShape.h', 'MapView/Map/RMShapeAnnotation.h', 'MapView/Map/RMStaticMapView.h', 'MapView/Map/RMTile.h', 'MapView/Map/RMTileCache.h', 'MapView/Map/RMTileCacheDownloadOperation.h', 'MapView/Map/RMTileImage.h', 'MapView/Map/RMTileMillSource.h', 'MapView/Map/RMTileSource.h', 'MapView/Map/RMTileSourcesContainer.h', 'MapView/Map/RMUserLocation.h', 'MapView/Map/RMUserTrackingBarButtonItem.h'
  ]

  m.resource_bundle = {
    'Mapbox' => 'MapView/Map/Resources/*'
  }

  m.documentation_url = 'https://www.mapbox.com/mapbox-ios-sdk'

  m.frameworks = 'CoreGraphics', 'CoreLocation', 'Foundation', 'QuartzCore', 'UIKit'

  m.libraries = 'Proj4', 'sqlite3', 'z'

  m.xcconfig = {
    'OTHER_LDFLAGS'        => '-ObjC',
    'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/Mapbox-iOS-SDK/Proj4"'
  }

  m.preserve_paths = 'MapView/MapView.xcodeproj', 'MapView/Map/Resources'

  m.vendored_libraries = 'Proj4/libProj4.a'

  m.dependency 'FMDB', '2.3'
  m.dependency 'GRMustache', '7.3.0'
  m.dependency 'SMCalloutView', '2.0'

end

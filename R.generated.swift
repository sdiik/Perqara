//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import RswiftResources
import UIKit

private class BundleFinder {}
let R = _R(bundle: Bundle(for: BundleFinder.self))

struct _R {
  let bundle: Foundation.Bundle

  let reuseIdentifier = reuseIdentifier()

  var string: string { .init(bundle: bundle, preferredLanguages: nil, locale: nil) }
  var color: color { .init(bundle: bundle) }
  var image: image { .init(bundle: bundle) }
  var nib: nib { .init(bundle: bundle) }
  var storyboard: storyboard { .init(bundle: bundle) }

  func string(bundle: Foundation.Bundle) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: nil)
  }
  func string(locale: Foundation.Locale) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: locale)
  }
  func string(preferredLanguages: [String], locale: Locale? = nil) -> string {
    .init(bundle: bundle, preferredLanguages: preferredLanguages, locale: locale)
  }
  func color(bundle: Foundation.Bundle) -> color {
    .init(bundle: bundle)
  }
  func image(bundle: Foundation.Bundle) -> image {
    .init(bundle: bundle)
  }
  func nib(bundle: Foundation.Bundle) -> nib {
    .init(bundle: bundle)
  }
  func storyboard(bundle: Foundation.Bundle) -> storyboard {
    .init(bundle: bundle)
  }
  func validate() throws {
    try self.nib.validate()
    try self.storyboard.validate()
  }

  struct project {
    let developmentRegion = "en"
  }

  /// This `_R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    let bundle: Foundation.Bundle
    let preferredLanguages: [String]?
    let locale: Locale?
    var navigationTitle: navigationTitle { .init(source: .init(bundle: bundle, tableName: "navigationTitle", preferredLanguages: preferredLanguages, locale: locale)) }

    func navigationTitle(preferredLanguages: [String]) -> navigationTitle {
      .init(source: .init(bundle: bundle, tableName: "navigationTitle", preferredLanguages: preferredLanguages, locale: locale))
    }


    /// This `_R.string.navigationTitle` struct is generated, and contains static references to 2 localization keys.
    struct navigationTitle {
      let source: RswiftResources.StringResource.Source

      /// Value: Favorites
      ///
      /// Key: favorite
      var favorite: RswiftResources.StringResource { .init(key: "favorite", tableName: "navigationTitle", source: source, developmentValue: nil, comment: nil) }

      /// Value: Game For You
      ///
      /// Key: home
      var home: RswiftResources.StringResource { .init(key: "home", tableName: "navigationTitle", source: source, developmentValue: nil, comment: nil) }
    }
  }

  /// This `_R.color` struct is generated, and contains static references to 8 colors.
  struct color {
    let bundle: Foundation.Bundle

    /// Color `AccentColor`.
    var accentColor: RswiftResources.ColorResource { .init(name: "AccentColor", path: [], bundle: bundle) }

    /// Color `background_color`.
    var background_color: RswiftResources.ColorResource { .init(name: "background_color", path: [], bundle: bundle) }

    /// Color `black_color`.
    var black_color: RswiftResources.ColorResource { .init(name: "black_color", path: [], bundle: bundle) }

    /// Color `blue_color`.
    var blue_color: RswiftResources.ColorResource { .init(name: "blue_color", path: [], bundle: bundle) }

    /// Color `grey_color`.
    var grey_color: RswiftResources.ColorResource { .init(name: "grey_color", path: [], bundle: bundle) }

    /// Color `tab_color`.
    var tab_color: RswiftResources.ColorResource { .init(name: "tab_color", path: [], bundle: bundle) }

    /// Color `tab_selected_color`.
    var tab_selected_color: RswiftResources.ColorResource { .init(name: "tab_selected_color", path: [], bundle: bundle) }

    /// Color `yellow_color`.
    var yellow_color: RswiftResources.ColorResource { .init(name: "yellow_color", path: [], bundle: bundle) }
  }

  /// This `_R.image` struct is generated, and contains static references to 2 images.
  struct image {
    let bundle: Foundation.Bundle

    /// Image `icon_back`.
    var icon_back: RswiftResources.ImageResource { .init(name: "icon_back", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }

    /// Image `icon_heart`.
    var icon_heart: RswiftResources.ImageResource { .init(name: "icon_heart", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }
  }

  /// This `_R.nib` struct is generated, and contains static references to 10 nibs.
  struct nib {
    let bundle: Foundation.Bundle

    /// Nib `BannerTableCell`.
    var bannerTableCell: RswiftResources.NibReferenceReuseIdentifier<BannerTableCell, BannerTableCell> { .init(name: "BannerTableCell", bundle: bundle, identifier: "BannerTableCell") }

    /// Nib `DescriptionTableCell`.
    var descriptionTableCell: RswiftResources.NibReferenceReuseIdentifier<DescriptionTableCell, DescriptionTableCell> { .init(name: "DescriptionTableCell", bundle: bundle, identifier: "DescriptionTableCell") }

    /// Nib `DetailViewController`.
    var detailViewController: RswiftResources.NibReference<UIKit.UIView> { .init(name: "DetailViewController", bundle: bundle) }

    /// Nib `FavoriteViewController`.
    var favoriteViewController: RswiftResources.NibReference<UIKit.UIView> { .init(name: "FavoriteViewController", bundle: bundle) }

    /// Nib `GameTableCell`.
    var gameTableCell: RswiftResources.NibReferenceReuseIdentifier<GameTableCell, GameTableCell> { .init(name: "GameTableCell", bundle: bundle, identifier: "GameTableCell") }

    /// Nib `HeaderTableCell`.
    var headerTableCell: RswiftResources.NibReference<HeaderTableCell> { .init(name: "HeaderTableCell", bundle: bundle) }

    /// Nib `HomeViewController`.
    var homeViewController: RswiftResources.NibReference<UIKit.UIView> { .init(name: "HomeViewController", bundle: bundle) }

    /// Nib `InfoTableCell`.
    var infoTableCell: RswiftResources.NibReferenceReuseIdentifier<InfoTableCell, InfoTableCell> { .init(name: "InfoTableCell", bundle: bundle, identifier: "InfoTableCell") }

    /// Nib `PublisherItemCollectionCell`.
    var publisherItemCollectionCell: RswiftResources.NibReferenceReuseIdentifier<PublisherItemCollectionCell, PublisherItemCollectionCell> { .init(name: "PublisherItemCollectionCell", bundle: bundle, identifier: "PublisherItemCollectionCell") }

    /// Nib `PublisherTableCell`.
    var publisherTableCell: RswiftResources.NibReferenceReuseIdentifier<PublisherTableCell, PublisherTableCell> { .init(name: "PublisherTableCell", bundle: bundle, identifier: "PublisherTableCell") }

    func validate() throws {
      if UIKit.UIColor(named: "blue_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'blue_color' is used in nib 'DetailViewController', but couldn't be loaded.") }
      if UIKit.UIColor(named: "blue_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'blue_color' is used in nib 'FavoriteViewController', but couldn't be loaded.") }
      if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "star.fill") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'star.fill' is used in nib 'GameTableCell', but couldn't be loaded.") } }
      if UIKit.UIColor(named: "black_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'black_color' is used in nib 'GameTableCell', but couldn't be loaded.") }
      if UIKit.UIColor(named: "grey_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'grey_color' is used in nib 'GameTableCell', but couldn't be loaded.") }
      if UIKit.UIColor(named: "yellow_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'yellow_color' is used in nib 'GameTableCell', but couldn't be loaded.") }
      if UIKit.UIColor(named: "tab_selected_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'tab_selected_color' is used in nib 'HomeViewController', but couldn't be loaded.") }
      if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "gamecontroller") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'gamecontroller' is used in nib 'InfoTableCell', but couldn't be loaded.") } }
      if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "star.fill") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'star.fill' is used in nib 'InfoTableCell', but couldn't be loaded.") } }
      if UIKit.UIColor(named: "blue_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'blue_color' is used in nib 'InfoTableCell', but couldn't be loaded.") }
      if UIKit.UIColor(named: "grey_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'grey_color' is used in nib 'InfoTableCell', but couldn't be loaded.") }
      if UIKit.UIColor(named: "yellow_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'yellow_color' is used in nib 'InfoTableCell', but couldn't be loaded.") }
      if UIKit.UIColor(named: "grey_color", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Color named 'grey_color' is used in nib 'PublisherItemCollectionCell', but couldn't be loaded.") }
    }
  }

  /// This `_R.reuseIdentifier` struct is generated, and contains static references to 6 reuse identifiers.
  struct reuseIdentifier {

    /// Reuse identifier `BannerTableCell`.
    let bannerTableCell: RswiftResources.ReuseIdentifier<BannerTableCell> = .init(identifier: "BannerTableCell")

    /// Reuse identifier `DescriptionTableCell`.
    let descriptionTableCell: RswiftResources.ReuseIdentifier<DescriptionTableCell> = .init(identifier: "DescriptionTableCell")

    /// Reuse identifier `GameTableCell`.
    let gameTableCell: RswiftResources.ReuseIdentifier<GameTableCell> = .init(identifier: "GameTableCell")

    /// Reuse identifier `InfoTableCell`.
    let infoTableCell: RswiftResources.ReuseIdentifier<InfoTableCell> = .init(identifier: "InfoTableCell")

    /// Reuse identifier `PublisherItemCollectionCell`.
    let publisherItemCollectionCell: RswiftResources.ReuseIdentifier<PublisherItemCollectionCell> = .init(identifier: "PublisherItemCollectionCell")

    /// Reuse identifier `PublisherTableCell`.
    let publisherTableCell: RswiftResources.ReuseIdentifier<PublisherTableCell> = .init(identifier: "PublisherTableCell")
  }

  /// This `_R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    let bundle: Foundation.Bundle
    var launchScreen: launchScreen { .init(bundle: bundle) }

    func launchScreen(bundle: Foundation.Bundle) -> launchScreen {
      .init(bundle: bundle)
    }
    func validate() throws {
      try self.launchScreen.validate()
    }


    /// Storyboard `LaunchScreen`.
    struct launchScreen: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UIViewController

      let bundle: Foundation.Bundle

      let name = "LaunchScreen"
      func validate() throws {

      }
    }
  }
}
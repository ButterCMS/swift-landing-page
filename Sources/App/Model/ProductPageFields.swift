//
//  File.swift
//  
//
//  Created by Godwin Ekainu on 20/08/2023.
//

import Foundation

// MARK: - ProductPageFields
struct ProductPageFields: Codable {
    let seo: SEO?
    let heroSection: HeroSection?
    let product: Product?
    let otherProduct: OtherProduct?
    let download: Download?
}

// MARK: - Download
struct Download: Codable {
    let productImg, headlineText, subText, appleImg: String?
    let playstoreImg: String?
}

// MARK: - HeroSection
struct HeroSection: Codable {
    let headlineText, subHeadlineText, callToActionText, creditCard: String?
    let rocketImg, creditCardText, rocketText, heroImg: String?
}

// MARK: - OtherProduct
struct OtherProduct: Codable {
    let headlineText, subHeadlineText, salesQuotes, productImg: String?
}

// MARK: - Product
struct Product: Codable {
    let headlineText, subHeadlineText, salesQuotes, productImg: String?
    let salesName, salesAvatar: String?
}

// MARK: - SEO
struct SEO: Codable {
    let title, description: String?
}

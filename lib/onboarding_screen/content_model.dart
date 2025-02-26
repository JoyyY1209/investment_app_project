class UnBoardingContent{
  String image;
  String title;
  String description;

  UnBoardingContent({required this.image,required this.title,required this.description});
}
List<UnBoardingContent> content=[
  UnBoardingContent(image: "assets/onboard_screen/1.json",
      title: "Your Easy Investment Solution",
      description: "Looking for investment opportunities? Explore secure and profitable investments with verified documentation, seamless transactions, and opportunities."),
  UnBoardingContent(image: "assets/onboard_screen/2.json", title: "Secure & Profitable Opportunities", description: "Entrepreneurs post opportunities, investors discover verified ventures. Secure transactions, transparent documentation, and growth together!"),
  UnBoardingContent(image: "assets/onboard_screen/3.json", title: "Invest with Confidence & Security", description: "Discover and invest in verified opportunities with secure transactions and transparent documentation. Grow your wealth with confidence!"),
];
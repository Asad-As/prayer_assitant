import '../../Core/imagePath.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}
Images imageS = Images();

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "PRAYER TIME",
    image: imageS.onboard1,
    desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\n"
  "Ipsum has been the industry's standard\n dummy text ever since the 1500s, when an\n unknown printer took a galley",
  ),
  OnboardingContents(
    title: "READ QURAAN",
    image: imageS.onboard2,
    desc:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\n"
        "Ipsum has been the industry's standard\n dummy text ever since the 1500s, when an\n unknown printer took a galley",
  ),
  OnboardingContents(
    title: "DONATION",
    image: imageS.onboard3,
    desc:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem\n"
        "Ipsum has been the industry's standard\n dummy text ever since the 1500s, when an\n unknown printer took a galley",
  ),
];

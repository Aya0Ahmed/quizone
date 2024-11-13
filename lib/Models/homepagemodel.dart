class homepagemodel
{
  List data;
  homepagemodel({required this.data});
  factory homepagemodel.FromJson(Map<String,dynamic>data)
  {
    return homepagemodel(data: data['data']['products']);
  }
}
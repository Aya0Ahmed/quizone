class loginmodel
{
  bool status;
  loginmodel({required this.status});
  factory loginmodel.FromJson(Map<String,dynamic>data)
  {
    return loginmodel(status: data['status']);
  }
}
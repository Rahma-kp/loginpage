import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
    final _usernameController =TextEditingController();
     final _passwordController=TextEditingController();
     final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     
   
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login.."),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 30),
        leading: Icon(Icons.home,color: Colors.white),
      ),
    

    body:SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
           
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal:100),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                    ),
                    label: Text("User Name"),
                    hintText:"Enter user name...",
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'value is empty';
                      }else{
                        return null;
                      }
                    },
                    maxLength:30,
                 
                ),
              ),
        
        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                child: TextFormField(
                  controller: _passwordController,
                   decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                    ),
                    label: Text("Password"),
                    hintText:"Enter user password...",
                    ),
                     validator: (value){
                      if(value==null || value.isEmpty){
                        return 'value is empty';
                      }else{
                        return null;
                      }
                    },
                    obscureText: true,
                ),
              ),
              ElevatedButton.icon(onPressed: (){
                if(_formkey.currentState!.validate()){
                  checklogin(context);
                }
              }, 
              icon: Icon(Icons.check,),
              
              label: Text("login",),
              
              ),
              
            ],
          ),
        ),
      ),
    )
    );
    
  }
   void checklogin(BuildContext ctx){
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if(_username ==_password){
      Navigator.push(context, MaterialPageRoute(builder: (context) => lists(),),);
    }
    else{
      final _errormessage = 'username password doesnot match';
      //snackbar
      ScaffoldMessenger.of(ctx)
      .showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        backgroundColor: Color.fromARGB(255, 239, 141, 134),
        
        content: Text(_errormessage),
        duration: Duration(seconds: 6),
        ),
        );
     
    }
}
}

            // ElevatedButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>lists()));}, child:Text("Login")),
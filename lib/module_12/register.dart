import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final registrationFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 60),
          child: Center(
            child: Column(
              children: [
                Text("Register",style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 40,),
                Form(
                  key: registrationFormKey,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter your mobile number",style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        hintText: "1712345678",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                        suffixIcon: Icon(Icons.check_circle),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.grey.shade400
                          )
                        ),enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.grey.shade400
                          )
                        ),focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.grey.shade400
                          )
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Mobile number is required";
                        }else if(value.length != 11){
                          return "Invalid mobile number";
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),

                    Text("Enter your email",style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "abc12@gmail.com",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey.shade400
                            )
                        ),enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade400
                          )
                      ),focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade400
                          )
                      ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Email is required";
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),

                    Text("Enter your password",style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "********",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey.shade400
                            )
                        ),enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade400
                          )
                      ),focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade400
                          )
                      ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Password is required";
                        }else if(value.length < 6){
                          return "Password must be at least 6 character";
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),

                    Text("Re-Enter your password",style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "********",
                        hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey.shade400
                            )
                        ),enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade400
                          )
                      ),focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade400
                          )
                      ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Confirm password is required";
                        }else if(value.length < 6){
                          return "Password must be at least 6 character";
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 40,),
                    
                    SizedBox(
                      width: double.infinity,
                      height: 50,

                      child: ElevatedButton(onPressed: (){
                        if(registrationFormKey.currentState!.validate()){}
                      }, style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                        )
                      ) ,child: Text("Sign Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                    ),

                    SizedBox(height: 20,),
                    Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),),
                              TextButton(onPressed: (){}, child: Text("Sign in",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),)),
                            ],
                          ),
                          Text("or",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700
                          ),
                          ),
                        ]
                      ),
                    ),
                    SizedBox(height: 10,),

                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 60,
                            decoration : BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey.shade500,
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(width: 30,"assets/images/google.png"),
                                  SizedBox(width: 10,),
                                  Text("Continue with Google",style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade800
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            height: 60,
                            decoration : BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey.shade500,
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(width: 30,"assets/images/apple.png"),
                                  SizedBox(width: 10,),
                                  Text("Continue with Apple",style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade800
                                  ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

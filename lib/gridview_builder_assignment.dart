import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class GridviewBuilderAssignment extends StatelessWidget {
  GridviewBuilderAssignment({super.key});

  List<String> name = [
    'Utility Bill',
    'Credit Card \nPayment',
    'Kuick Bill',
    'Government & \nBill',
    'UBL Card & \nLoan',
    'Electricity Bill',
    'Water Bill',
    'Gas Bill',
  ];
  List<String> icons = [
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/employment-icon-download-in-svg-png-gif-file-formats--job-business-employee-work-texes-pack-design-development-icons-12441030.png?f=webp&w=256',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        leadingIcon1: const Icon(Icons.person),
        actionIcon:const Icon(Icons.search),
        leadingIcon2: const Icon(Icons.arrow_back,color: Colors.blue,),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              const SizedBox(),
              const Text(
                'Bills & \nPayments',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: icons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 15,
                                    spreadRadius: 5,
                                    offset: const Offset(1, 8))
                              ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Column(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.network(
                                  icons[index],color: Colors.blue,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                name[index],style: const TextStyle(
                                fontSize: 18,

                              ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/about_club.dart/custom_about_clube/custom_photo_text_text.dart';
import 'package:sp1_e_commerce/ui/views/main_view/about_club.dart/custom_about_clube/custom_text_photo_text.dart';
import 'package:sp1_e_commerce/ui/views/main_view/about_club.dart/custom_about_clube/custom_text_text_photo.dart';

class AboutClubView extends StatefulWidget {
  final String? index;
  const AboutClubView({super.key, this.index});

  @override
  State<AboutClubView> createState() => _AboutClubViewState();
}

class _AboutClubViewState extends State<AboutClubView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(
            title: 'عن النادي',
          ),
          body: ListView(
            children: [
              SizedBox(
                height: screenWidth(60),
              ),
              CustomPhotoTextText(
                index: 1,
                icon: "Rectangle",
                title: 'متى تأسس نادي الكرامة؟',
                body: """تأسس نادي الكرامة السوري في عام 1928 في مدينة حمص
في سورية وكان يعرف بنادي خالدبن الوليد في ذلك الوقت وفي
عام 1972تم دمج النادي مع العديد من الاندية الاخرى وهي نادي
الوحدةونادي الطلائع و نادي التضامن و نادي الجهاد و اطلق عليه
أنذاك اسم نادي الكرامة وهذا الاسم مازال يستخدم حتى اليوم .""",
              ),
              CustomTextTextPhoto(
                  index: 1,
                  width: screenWidth(2.4),
                  icon: 'Rectangle107',
                  title: '''من هو مؤسس نادي    
الكرامة :''',
                  body: '''يُعتبر الأستاذ ساطع أتاسي مؤسس
نادي الكرامة السوري، ويُعتبر أيضا 
الأب الروحي للنادي.'''),
              SizedBox(
                height: screenWidth(36),
              ),
              CustomPhotoTextText(
                index: 2,
                icon: "Rectangle108",
                title: 'كيف جاءت فكرة تأسيس نادي الكرامة :',
                body: '''جاءت فكرة تأسيس النادي من قِبل مجموعة من شباب 
مدينة حمص الذين مارسوا رياضة كرة القدم وفكروا
 بطريقة جدية في تأسيس نادي ليجمعهم جميعا وبناء
على ذلك جاءت فكرة التأسيس.''',
              ),
              CustomPhotoTextText(
                index: 3,
                icon: "Rectangle109",
                title: 'ما هو الملعب الرسمي لنادي الكرامة :',
                body:
                    '''يُعَدُّ ملعب خالد بن الوليد، الذي تأسس في عام 1960 ، هو 
الملعب الرسمي لنادي حمص الريا ضي. يقع الملعب في 
مدينة حمص ويُعَدُّ ثاني أحدث الملاعب في سوريابعد ملعب حلب الدولي يتسع الملعب لحوالي 38000 متفرج، ويُعرَفُ هذا الملعب بلقب “مقبرة الفرق” وذلك لأنه من الصعب جدًا هزيمة
نادي الكرامة فيه. كما استضاف الملعب نهائي دوري أبطال
آسيا في عام 2006''',
              ),
              CustomTextTextPhoto(
                index: 4,
                icon: 'Rectangle110',
                title: '''ما هي اول بطولة حصل     
عليها نادي الكرامة :''',
                body: '''في الخامس والعشرين من نيسان
عام 1948م فاز نادي الكرامةالسوري
بأول بطولة في تاريخه حيث تغلب على
منتخب حلب بنتيجةهدفين مقابل هدف
مقابل هدف واحد .''',
              ),
              CustomPhotoTextText(
                index: 5,
                icon: "Rectangle111",
                title: 'السمعة الخارجية لنادي الكرامة :',
                body:
                    '''السمعة العربية والآسيوية القاريّة، حققها نادي الكرامة عندما
خاض بطولة الأندية العربية بحمص عام 1985 إلى جانب
النجمة اللبناني والفيصلي الأردنّي ومشاركته بدورة الملك حسين
بالأردن في عام 1987 ولقائه مع الهلال السعودي في تصفيات
دوري الأندية الآسيوية أبطال الكؤوس سنة 2000 , وكذلك الأمر 
مع الزمالك المصريّ في تصفيات دوري أبطال العرب عام 2004
كما شارك بدورات عربية مختلفة في العراق والأردن ومصر ونافس
على ألقابها وكان الإنجاز الأكبر بوصوله للمرة الأولى بتاريخه وتاريخ
لكرة السورية إلى المباراة النهائية  لدوري أبطال آسيا وخسر اللقب
في اللحظات الأخيرة أمام تشونبوك الكوري بعد خسارته في كوريا
الجنوبية وفوزه في حمص. يعدّ فريق الكرامة الفريق الآسيوي
الوحيد الذي يشارك في دوري أبطال آسيا بنظامها الجديد لثلاث
مرات متتالية ويتأهل في جميعها لدور الثمانية الكبار على الأقل و
في عام 2009 شارك النادي في كأس الاتحاد الآسيوي لأسباب
نظيمية ومادية وقد وصل إلى نهائي لبطولة ليواجه نادي الكويت
في مباراة واحدة في ملعب نادي الكويت ويخسر المباراة بعد عدة
وعوامل أثرت على مستوى الفريق في تلك البطولة كما يلعب أبناء
النادي من كوادر فنية وتدريبيّة و خبرات ولاعبين ممن يعمل في
الدول العربية دوراً مهما في المحافظة على السمعة العطرة لهاذا
 النادي وقد خرّج النادي عدة لاعبين متميزين يعدّون نجوم فرقهم''',
              ),
              CustomTextTextPhoto(
                index: 7,
                showTitle: false,
                width: screenWidth(1.8),
                hight: screenWidth(1.9),
                icon: 'Rectangle112',
                body: '''حاليا ومنهم :    
• جهاد الحسين
• فراس الخطيب
• توفيق طيارة
• محمود المواس
• علاء الشبلي
• مصعب بلحوس
• عاطف جنيات''',
              ),
              CustomTextPhotoText(
                  index: 8,
                  icon: 'Rectangle115',
                  title: 'كرة السلة في نادي الكرامة :',
                  body:
                      'حصل الكرامة على بطولة السلة للمرة الأولى في تاريخه عام 2020'),
            ],
          )),
    );
  }
}

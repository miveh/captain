import 'package:get/get.dart';

import '../Models/Roles/roles_model.dart';

List<RolesModel> rolesList = [
  RolesModel(
    id: 0,
    isShow:false.obs,
    title: 'گادفادر',
    role: 0,
    isSelected: false.obs,
    description:
        'گادفادر وظیفه مدیریت تیم مافیا را به عهده دارد، انتخاب تیر مافیا به عهده اوست، استعلام گادفادر برای کاراگاه همیشه شهروند است',
    options: [
      'اگر گادفادر از بازی خارج شود رتبه بعدی مافیا، کشته شب را معرفی میکند و ابیلیتی ساقی دیگر بر روی تیر تاثیری ندارد',
      'اگر توسط ساقی انتخاب شود تیرش به سنگ میخورد',
      'اگر توسط دزد انتخاب بشود، آن شب مافیا تیر نمی‌زند چون دزد تیر گادفادر را دزدیده است',
      'گادفادر می‌تواند به هم تیمی های خود شلیک کند',
    ],
  ),
  RolesModel(
    id: 1,
    isShow:false.obs,
    title: 'تروریست',
    role: 0,
    isSelected: false.obs,
    description:
        'تروریست رتبه دوم تیم مافیا، در صورتی که در طول روز از بازی خارج شود می‌تواند نقش خود را اعلام کرده و به همراه خود یک نفر را خارج کند',
    options: [
      'مرگ تروریست باید قطعی شود و تا قبل از کشته شدندش در روز نمی‌تواند کسی را از بازی خارج کند',
      'در صورت حذف با رای گیری باید منتظر رای قاضی هم بماند، در صورتی که قاضی رای خروج دهد می‌تواند یک نفر را از بازی خارج نماید',
      'در صورتی که در شب قبل ساقی انتخابش کرده باشد، در روز بعد نمی‌تواند کسی را از بازی خارج کند و انتخاب آن در بازی می‌ماند',
      'در صورت وجود محافظ در بازی و استفاده محافظ از قابلیتش، نمی‌تواند کسی را از بازی خارج کند',
      'اگر شخصی را که تروریست انتخابش کرده است، جلیقه آهنگر داشته باشد نیز موفق به ترور نمی‌شود',
    ],
  ),
  RolesModel(
    id: 2,
    isShow:false.obs,
    title: 'ناتاشا',
    role: 0,
    isSelected: false.obs,
    description:
        'رتبه سوم تیم مافیاست، هر شب می‌تواند یک نفر را سایلنت کند، شخصی که توسط ناتاشا انتخاب شده در روز بعد حق صحبت، دفاع، رای، تایید و تکذیب صحبت ها و  حق ایماء و اشاره هم ندارد',
    options: [
      'اگر در بازی دزد یا افسونگر وجود نداشته باشد، ناتاشا با یارهاش بیدار نمی‌شود و مافیا را نمی‌شناسد و مافیا هم او را نمی‌شناسد',
      'هیچگاه خود را نمی‌تواند سایلنت کند',
      'یک نفر را دوبار پشت سر هم نمیتواند سایلنت کند و باید آن شخص را یک شب در میان انتخاب کند',
      'اگر شخصی را که ساینت کرده است کشیش آن را انتخاب کند آن فرد از سایلنت در میآید',
      'اگر مورد انتخاب ساقی قرار بگیر خودش سایلنت میشود و حق رای هم ندارد',
    ],
  ),
  RolesModel(
    id: 3,
    isShow:false.obs,
    title: 'وکیل',
    role: 0,
    isSelected: false.obs,
    description:
        'وکیل رتبه چهارم تیم مافیا، هر شب یکی از یاران خود را انتخاب می‌کند و استعلام آن شخص برای همان شب برای کاراگاه شهروند میشود',
    options: [
      'خودش را نمی‌تواند انتخاب کند',
      'گادفادر را نمی‌تواند انتخاب کند',
      'اگر در بازی نقش تهمت زن وجود نداشته باشد می‌تواند یک شب در میان یک شهروند را انتخاب کند و استعلام آن را برای کاراگاه مافیا کند',
      'اگر در شب توسط ساقی انتخاب بشود عملکردش بی نتیجه خواهد ماند',
    ],
  ),
  RolesModel(
    id: 4,
    isShow:false.obs,
    title: 'تهمت زن ',
    role: 0,
    isSelected: false.obs,
    description:
        'تهمت زن رتبه پنجم تیم مافیا، هر شب یکی از شهروندان را انتخاب میکند و استعلام آن شخص برای همان شب برای کاراگاه مافیا میشود',
    options: [
      'اگر در شب توسط ساقی انتخاب شود عملکردش بی نتیجه خواهد ماند',
    ],
  ),
  RolesModel(
    id: 5,
    isShow:false.obs,
    title: 'جاسوس',
    role: 0,
    isSelected: false.obs,
    description:
        'جاسوس رتبه ششم تیم مافیا، اگر توسط فراماسون بازی بیدار شود وارد تیم ماسونی می‌شود، و مرگ ماسونی رخ نمی‌دهد و برای ماسون ها شهروند به نظر می‌آید. به صورت کلی وظیفه جاسوس رخنه در تیم متحدین شهروند می‌باشد',
    options: [
      'در صورت مرگ ماسونی جاسوس کشته نمی‌شود',
      'در صورتی که جاسوس در تیم ماسونی باشد و ماسون ها یک شخص مستقل را بیدار کنند، جاسوس هم با مرگ ماسونی از بازی خارج می‌شود',
    ],
  ),
  RolesModel(
    id: 6,
    isShow:false.obs,
    title: 'روانی',
    role: 0,
    isSelected: false.obs,
    description:
        'روانی رتبه هفتم تیم مافیا، شخصیت مقابل روانشناس است (این نقش فقط با وجود روانشناس باید در بازی باشد) مافیا روانی باید در فاز شب شخصی را انتخاب کند که اگر آن فرد در فاز شب شاهد قتل روانشناس باشد و در صورت تأیید خود آن شخص تیر بخورد',
    options: [
      'اگر فردی که تایید دهد و تیر به او برگردد و دکتر او را نجات دهد جان سالم به در می‌برد',
      'روانی دو شب پشت سر هم نمی‌تواند یک نفر را انتخاب کند',
      'اگر توسط ساقی انتخاب شود آن قابلیت به خودش برمیگردد و اگر روانشاس او را شاهد قتل بداند و تایید کند در صورت نجات ندادن دکتر خودش از بازی حذف می‌شود',
    ],
  ),
  RolesModel(
    id: 7,
    isShow:false.obs,
    title: 'خرابکار',
    role: 0,
    isSelected: false.obs,
    description:
        'خرابکار رتبه هشتم تیم مافیا، نقش مقابل تفنگدار می‌باشد. هر شب بیدار شده و یک یا دو نفر به صلاحدید گرداننده انتخاب میکند، اگر آن شخص در همان شب تفنگ بگیرد از تفنگ دار و در روز بعد از تفنگ خود استفاده کند، گلوله به خود شخص برمی‌گردد و خود از بازی حذف می‌شود',
    options: [
      'در شب به همان تعدادی که تفنگ دار تفنگ پخش می‌کند خرابکار می‌تواند به همان تعداد خرابکاری انجام دهد',
      'اگر مورد انتخاب ساقی قرار بگیرد قابلیت آن بی تاثیر می‌باشد',
      'خرابکار نمی‌تواند دو شب پشت سر هم یک بازیکن را انتخاب کند',
      'قابلیت خرابکار بر روی یار های روشن مافیا بی تاثیر می‌باشد',
    ],
  ),
  RolesModel(
    id: 8,
    isShow:false.obs,
    title: 'مرد قوی',
    role: 0,
    isSelected: false.obs,
    description: 'مرد قوی رتبه نهم تیم مافیا، یک تیر غیر قابل درمان دارد. درصورتی که به بازیکنی شلیک کند در صورت درمان دکتر از بازی خارج می‌شود حتی اگر رویین تن، محافظ یا مستقل باشد',
    options: [
      'مرد قوی تنها یکبار می‌تواند در طول بازی از قابلیتش استفاده کند',
      'شخصی که مورد حمله مرد قوی قرار می‌گیرد اگر جلیقه آهنگر داشته باشد از حمله جان سالم به در می‌برد',
      'مرد قوی در شبی که می‌خواهد از قابلیت خودش استفاده کند تنها در 10 ثانیه اولیه مشورت با بالا بردن دست خود می‌تواند از قابلیت خود استفاده کند و تمامی مافیا ها می‌خوابند و حق مشورت از آنها آن شب گرفته و به تنهایی اعلام شات می‌کند',
      'در شبی که مرد قوی از قابلیت خود استفاده می‌کند در این شب گادفادر حق شلیک ندارد',
      'اگر در شبی که می‌خواهد از قابلیتش استفاده کند ساقی آنرا انتخاب کند بدون اینکه خودش بداند تیرش بی اثر می‌شود',
    ],
  ),
  RolesModel(
    id: 9,
    isShow:false.obs,
    title: 'یاکوزا',
    role: 0,
    isSelected: false.obs,
    description: 'یاکوزا رتبه دهم تیم مافیا، به اینصورت که در قبل از معارفه تیم مافیا ابتدا یاکوزا بیدار می‌شود، گرداننده تمام تیم مافیا را به صورت چشم بسته به یاکوزا معرفی میکند. یاکوزا به انتخاب خود می‌تواند جای یکی از مافیا ها را با یک شهروند عوض کند، سپس یاکوزا می‌خوابد و گرداننده شهروند انتخاب شده را بیدار میکند و به می‌گویید که یاکوزا تو را به تیم مافیا دعوت کرده است اگر شهروند نپذیرد و این روند 3 مرتبه ادامه پیدا کند روز بعد اولین شات یاکوزا جز کشته ها خوانده می‌شود و از بازی حذف می‌شود اگر بپذیرد نقش های این دو نفر با هم عوض  می شود',
    options: [
      'فردی که پذیرفته به یارانش به هیچ عنوان نمی‌تواند بگوید فرد مقابل چه قابلیتی داشته و یاکوزا هم نمی‌تواند بگویید چه اشخاصی را باهم تعویض کرده است',
      'شهروند بازی نمی‌تواند اشاره ای به تعویض شدن یا نشدنش در روز بازی بکند',
      'استفاده از قابلیت یاکوزا اختیاری است',
      'هیچ نقشی بر عملکردش تاثیری ندارد',
      'گادفادر را نمی‌تواند تعویض کند و یار خاموش به او معرفی نمی‌شود',
    ],
  ),
  RolesModel(
    id: 10,
    isShow:false.obs,
    title: 'افسونگر ',
    role: 0,
    isSelected: false.obs,
    description: 'افسونگر تیم مافیا، هر شب قبل از بیدار شدن تیم مافیا بیدار می‌شود و یک نفر را انتخاب می‌کند آن شخص قابلیت خود را در شب از دست می‌دهد',
    options: [
      'در صورتی که در بازی از افسونگر استفاده شود دزد و جادوگر کلمه نباید در بازی باشد و افسونگر یار خاموش تیم مافیا میشود',
      'زمانی که فرد افسون شده بیدار میشود، گرداننده باید به او اعلام کند افسون شده ای',
      'تاثیر افسونگر بر مستقل ها فقط بر روی قابلیت می‌باشد و تاثیری بر روی نامیرا بودن ندارد',
      'اگر توسط ساقی انتخاب شود بدون آنکه متوجه شود قابلیت آن بی تاثیر می‌شود',
    ],
  ),
  RolesModel(
    id: 11,
    isShow:false.obs,
    title: 'جادوگر کلمه',
    role: 0,
    isSelected: false.obs,
    description: 'جادوگر کلمه مافیایست که می‌تواند هر شب یک کلمه را روی یک فرد جادو کند به اینصورت که اگر آن فرد در روز از آن کلمه استفاده کند از بازی حذف می‌شود در همان لحظه در صورت استفاده از جادوگر کلمه یار خاموش تیم مافیا می‌باشد و یاران خودش را نمی‌شناسد',
    options: [
      'در صورت استفاده از جادوگر کلمه دیگر در بازی از دزد و افسونگر استفاده نمیشود',
      'جادوگر نمی‌تواند دو شب پشت سر هم یک نفر را انتخاب کند',
      'کلمات انتخابی جادوگر نباید زیر 4 حرف و از واژه های پر استفاده بازی مافیا باشد مثل: شهروند ، مافیا و ...',
      'در صورتی که ساقی آنرا انتخاب کند جادو به خود جادوگر برمیگردد',
    ],
  ),
  RolesModel(
    id: 12,
    isShow:false.obs,
    title: 'ناتو',
    role: 0,
    isSelected: false.obs,
    description: 'ناتو نقش است مافیایی که در طول روز به دنبال آن است تا شهروندانی که دارای نقش هستن را شناسایی کند. ناتو هرشب می‌تواند یک نفر را به گرداننده معرفی کند و او را با نقشی که دارد معرفی کند به عنوان مثال(محمدرضا دکتر) اگر حدس او درست باشد آن شهروند تا آخر بازی نمی‌تواند از قابلیت خود استفاده کند',
    options: [
      'در صورتی که ناتو 3 حدس اشتباه بزند خود از بازی حذف شده و کشته شب اعلام میشود',
      'استفاده از قابلیت ناتو اختیاری می‌باشد',
      'ناتو در شبی که حدس درست می‌زند ساقی او را انتخاب کرده باشد گرداننده اعلام میکند حدس اشتباه است',
    ],
  ),
  RolesModel(
    id: 13,
    isShow:false.obs,
    title: 'دزد',
    role: 0,
    isSelected: false.obs,
    description: 'دزد در صورتی که داخل بازی باشد مافیای خاموش می‌باشد و بقیه یاران مافیا با هم بیدار می‌شوند. دزد هر شب بعد از ساقی و نگهبان بیدار شده و یک نفر را انتخاب می‌کند اگر آن فرد دارای قابلیت باشد قابلیت آنرا می‌دزدد و بر روی دیگر نقش ها اعمال میکند',
    options: [
      'در صورت استفاده از دزد، از افسونگر و جادوگر دیگر استفاده نمی‌شود',
      'اگر به نقش هایی که استفاده از آنها اجباریست دسترسی پیدا کند باید بر شخص دیگری اعمال کند مثل: دکتر، گادفادر، ناتاشا و ... . اگر نقشی را پیدا کند که اجباری بر آن نیست می‌تواند استفاده نکند مثل: اسنایپر، تفنگدار و...',
      'اگر به نقش هایی که قابلیت شب ندارند اشاره کند هیچ اتفاقی نمی‌افتد مثل:تروریست، قاضی و ...',
      'زمانی که فرد انتخاب شده دزد بیدار میشود باید به صاحب نقش اعلام کرد که از او دزدی شده است',
      'در صورتی که بمب را انتخاب کند ودر شب کشته شود اطرافیان آن هم با او کشته می‌شوند',
      'اگر رویین تن را انتخاب کند قابلیت نامیرا بودن آنرا تصاحب میکند',
      'اگر به مستقل های بازی بزند قابلیت آنهارا میگیرد نه نامیرا بودن آنها را',
      'اگر در بازی کاراگاه وجود داشته باشد و او را انتخاب کند دستگیر و از بازی حذف می‌شود اما اگر کاراگاه وجود نداشته باشد با انتخاب نگهبان دستگیر و از بازی حذف می‌شود',
      'یک شب در میان می‌تواند یک نفر را انتخاب کند',
      'اگر توسط ساقی انتخاب شود هر نقش را انتخاب کند به او اعلام می‌شود نقشی ندارد',
    ],
  ),
  RolesModel(
    id: 14,
    isShow:false.obs,
    title: 'دیده بان',
    role: 0,
    isSelected: false.obs,
    description: 'دیده بان مافیایی است که باید حدس بزند چه روزی در بازی قرار به گرفتن اعلام وضعیت می‌باشد. و در شب قبل به گرداننده اعلام تأیید کند اگر در فردا اعلام وضعیت گرفته شود هر وضعیتی باشد یک پله روشن تر اعلام میشود به عنوان مثال : قرمز، سفید اعلام می‌شود. دیده بان تنها یک قابلیت در طول بازی دارد',
    options: [
      'اگر در شبی که تأیید داده است ساقی او را انتخاب کند قابلیت او بی اثر می‌باشد',
      'اگر در شبی که تأیید داده است و در روز بازی اعلام وضغیت صورت نگیرد قابلیت او از بین رفته است',
    ],
  ),
  RolesModel(
    id: 15,
    isShow:false.obs,
    title: 'دکتر سیاه',
    role: 0,
    isSelected: false.obs,
    description: 'دکتر سیاه نقش مافیایی است که وظیفه محافظت از تیم مافیا را در شب دارد. \n دکتر سیاه در شب بعد از اسنایپر یا روانشناس بیدار شده و یک مافیا را در بازی نجات میدهد',
    options: [
      'در نظر داشته باشید در تعداد 20 نفر دکتر سیاه یک نجات و بیشتر از 30نفر دو حق نجات دارد',
      'دکتر سیاه در طول بازی فقط یکبار می‌تواند خود را نجات دهد',
      'دکتر سیاه می‌تواند از حذف مافیا در شب جلوگیری کند',
      'دکتر سیاه با حدس اینکه یک نفر یار خاموش تیم مافیا است می‌تواند آن رانجات دهد حتی اگر آن فرد شهروند باشد آنرا می‌تواند نجات دهد',
      'دکتر سیاه می‌تواند در شب شخصی را نجات ندهد',
      'اگر ساقی دکتر سیاه را انتخاب کند و شخصی را انتخاب کند باعث کشته شدن او می‌شود حتی اگر او شات نشده باشد',
    ],
  ),
  RolesModel(
    id: 16,
    isShow:false.obs,
    title: 'مافیا ساده',
    role: 0,
    isSelected: false.obs,
    description: 'پایین ترین رده تیم مافیا، قابلیت خاصی ندارد و فقط شب ها بیدار می‌شود و باید کمک کند تا شهروندها را با رای گیری از بازی حذف کند',
    options: [],
  ),
  RolesModel(
    id: 17,
    isShow:false.obs,
    title: 'رویین تن',
    role: 1,
    isSelected: false.obs,
    description: 'نقش مهم شهروندی که در شب با تیر مافیا و کیلر از بازی حذف نمی‌شود و توسط نرون هم نفتی نمی‌شود',
    options: [
      'اگر رویین تن در طول روز بازی به نامیرا بودن خود اشاره ای کند حتی غیر مستقیم توسط گرداننده بازی باید حذف شود',
      'رویین تن در اثر اتفاق های شهروندی از بازی حذف می‌شود مثل گلوله اسنایپر، انفجار بمب، مرگ ماسونی، بافت عنکبوت، یا حمله روانشناس و ...',
      'رویین تن از حمله مرد قوی جان سالم به در نمی‌برد',
      'رویین تن اگر توسط ساقی انتخاب شده باشد با هر تیر از بازی خارج می‌شود',
    ],
  ),
  RolesModel(
    id: 18,
    isShow:false.obs,
    title: 'دکتر',
    role: 1,
    isSelected: false.obs,
    description: 'دکتر نجات دهنده شهروندان، هر شب بیدار می‌شود و به تعدادی که گرداننده می‌گویید می‌تواند بازیکنانی که احتمال می‌دهد مافیا آنها را کشته باشد را نجات دهد. دکتر بازی ۱/۶ جعمیت بازی حق نجات دارد. در صورتی که شخصی را درست نجات دهد آن فرد در بازی می‌ماند',
    options: [
      'دکتر بازی می‌تواند هر شب خود را نجات دهد',
      'درصورتی که توسط ساقی انتخاب شود بی آنکه خود بداند تمام نجات هایش بی اثر می‌شود',
      'نجات دکتر در مقابل حمله مرد قوی بی اثر می‌باشد',
    ],
  ),
  RolesModel(
    id: 19,
    isShow:false.obs,
    title: 'کشیش',
    role: 1,
    isSelected: false.obs,
    description: 'کشیش نقش جذاب شهروندی که در مقابل ناتاشا قرار میگیرد، هر شب بیدار می‌شود و کسی را که حدس می‌زند ناتاشا آن را سایلنت کرده باشد را انتخاب کند آن فرد از سایلنتی در می‌آیید.',
    options: [
      'کشیش خود را به هیچ عنوان نمی‌تواند انتخاب کند',
      'در صورتی که ساقی او را انتخاب کند عملکردش بی نتیجه خواهد بود',
    ],
  ),
  RolesModel(
    id: 20,
    isShow:false.obs,
    title: 'قاضی',
    role: 1,
    isSelected: false.obs,
    description: 'قاضی شهروندی است که می‌تواند یکبار نتیجه رای گیری روز را باطل کند به این شکل که بعد از پایان رای گیری و اعلام حذف یک بازیکن، به آن بازیکن فرصت وصیت داده می‌شود، سپس اعلام شب می‌شود، قاضی بیدار می‌شود و نظر خود را اعلام می‌کند که آن فرد بماند در بازی یا نماند',
    options: [
      'قاضی از قدرت خود برای نگه داشتن خود نمی‌تواند استفاده کند',
      'قاضی فقط یک بار می‌تواند از قابلیت خود استفاده کند',
      'در صورتی که توسط ساقی انتخاب شود در همان روز قابلیتش بی نتیجه خواهد بود و اگر شخصی را نگه دارد بی اثر و دیگر نمی‌تواند از قابلیتش استفاده کند',
    ],
  ),
  RolesModel(
    id: 21,
    isShow:false.obs,
    title: 'اسنایپر',
    role: 1,
    isSelected: false.obs,
    description: 'اسنایپر شهروندی است که قابلیت شلیک در شب را دارد، هر شب بیدار میشود، به تعدادی که گرداننده می‌گوید تیر دارد و به بازیکنی که فکر می‌کند مافیاست شلیک میکند. اسنایپر ۱/۷ جعمیت شروع کننده بازی تیر دارد',
    options: [
      'اسنایپر در طول روز بازی شخصی را نمی‌تواند تهدید به کشتن کند در این صورت حذف می‌شود',
      'اگر فرمانده تیر اسنایپر را تأیید نکند تیر شلیک شده به خشاب اسنایپر برمی‌گردد',
      'اگر توسط ساقی انتخاب بشود و در همان شب به کسی شلیک کند در صورت تأیید فرمانده (شخصی که توسط اسنایپر انتخاب شده به فرمانده نشان داده میشود.) خودش کشته می‌شود',
    ],
  ),
  RolesModel(
    id: 22,
    isShow:false.obs,
    title: 'فرمانده',
    role: 1,
    isSelected: false.obs,
    description: 'فرمانده شهروندی است که بعد از اسنایپر بیدار می‌شود، گرداننده هدف شلیک اسنایپر را به فرمانده اعلام میکند، فرمانده می‌تواند این شلیک را رد یا تأیید کند',
    options: [
      'در صورتی که فرمانده شلیک را تأیید نکند تیر به خشاب اسنایپر برمیگردد',
      'فرمانده شلیکی که به خودش شده را نمی‌تواند رد کند',
      'در صورتی که ساقی او را انتخاب کند عملکردش بی نتیجه خواهد بود',
    ],
  ),
  RolesModel(
    id: 23,
    isShow:false.obs,
    title: 'تفنگدار',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی که در شب به تعدادی که گرداننده اعلام میکند می‌تواند به بازیکنان تفنگ دهد و آن شخص می‌تواند در روز از آن تفنگ تا قبل از آغاز رای گیری برای کشتن یک نفر استفاده کند. تفنگ دار ۱/۷ جعمیت شروع کننده بازی تفنگ دارد',
    options: [
      'فردی که تفنگ دارد حتما باید تا قبل از رای گیری از تفنگ خود استفاده کند اما استفاده از تفنگ اختیاریست',
      'در شرایطی که دو نفر در یک روز تفنگ داشته باشند و همزمان بخواهند شلیک کنند اولویت با کسی است که زودتر شلیک کند',
      'در صورت انتخاب ساقی عملکردش بی نتیجه می‌شود و تفنگ به انتخابش داده نمی‌شود، بدون آنکه مطلع شود',
      'تفنگدار به خودش نمی‌تواند تفنگ بدهد',
      'شخصی که سایلنت باشد نمی‌توانند از تفنگ خود استفاده کند',
    ],
  ),
  RolesModel(
    id: 24,
    isShow:false.obs,
    title: 'کابوی',
    role: 1,
    isSelected: false.obs,
    description: 'کابوی شهروندی است که می‌تواند در طول روز تا قبل از آغار رای گیری نقش خود را اعلام کند و یک بازیکن را با خود از بازی بیرون ببرد',
    options: [
      'در صورتی که کابوی در زمانی غیر از آغاز روز تا آغاز رای گیری نقش خود را اعلام کند نمی‌تواند کسی را از بازی بیرون ببرد و خودش از بازی حذف می‌شود',
      'در صورتی که کابوی تروریست را انتخاب کند، تروریست هم یک نفر دیگر را از بازی بیرون می‌برد',
      'اگر ساقی کابوی را انتخاب کند یا کابوی ناتویی شده باشد در صورت اعلام نقش از بازی تنها حذف می‌شود',
      'اگر کابوی سایلنت شده باشد در فاز روز نمی‌تواند از قابلیت خود استفاده کند',
    ],
  ),
  RolesModel(
    id: 25,
    isShow:false.obs,
    title: 'بمب',
    role: 1,
    isSelected: false.obs,
    description: 'بمب شهروندی است که می‌تواند در طول روز تا قبل از آغاز رای گیری نقش خود را اعلام کند و بین دو بازیکن به اصطلاح منفجر شود و دو بازیکن را به همراه خود از بازی خارج کند. و در فاز شب اگر کشته شود اطرافیان خود هم با او کشته می‌شوند حتی اگر نجات دکتر را داشته باشند',
    options: [
      ' اگر ساقی بمب را انتخاب کند یا بمب ناتویی شده باشد در صورت اعلام نقش از بازی تنها حذف می‌شود',
      'اگر بمب سایلنت شده باشد در فاز روز نمی‌تواند از قابلیت خود استفاده کند',
      'در صورتی که در بازی بمب وجود دارد از زمان شروع بازی هیچکدام از افراد داخل بازی تا زمان اعلام نقش بمب حق جا به جایی ندارند',
    ],
  ),
  RolesModel(
    id: 26,
    isShow:false.obs,
    title: 'محافظ',
    role: 1,
    isSelected: false.obs,
    description: 'شهروندی است که در شب با هیچ تیری جز تیر مرد قوی کشته نمی‌شود، محافظ در طول روز می‌تواند بازیکنی که تروریست برای حذف انتخاب کرده را نجات دهد، در صورت استفاده از قابلیت خود به همراه تروریست از بازی حذف خواهد شد',
    options: [
      'اگر محافظ در روز اول بازی از طریق رای گیری از بازی حذف شود توسط گرداننده نقش اش اعلام شده، در بازی می‌ماند و تبدیل به شهروند ساده می‌شود',
      'در صورتی که مورد انتخاب ساقی قرار گیرد در فاز شب با هر تیری کشته می‌شود و در روز بعد در صورت استفاده از قابلیتش در مقابل تروریست، خودش به همراه تروریست و انتخاب تروریست از بازی بیرون می‌رود',
      'اگر تروریست خود محافظ را انتخاب کند، محافظ از بازی بیرون می‌رود و نمی‌تواند جلوی تروریست را بگیرد',
    ],
  ),
  RolesModel(
    id: 27,
    isShow:false.obs,
    title: 'آهنگر',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی است که میتواند یک بازیکن را یکبار از کشته شدن در شب و روز و یا حذف از طریق رای گیری نجات دهد. آهنگر بسته به تعداد بازیکنان داخل بازی میتواند یک جلیقه و یا دو جلیقه بدهد کسی که جلیقه دریافت میکند یکبار جان اضافه دارد و هم میتواند یکبار از رای گیری یا شات ها در امان بماند',
    options: [
      'نمیتواند به خودش جلیقه بدهد',
      'اگر کسی جلیقه داشته باشد و در همان شب کشته شده باشد، فردا روز از طریق رای گیری حذف می‌شود',
      'جلیقه آهنگر در مرگ ماسونی کاربرد ندارد',
      'شخصی که جلیقه آهنگر داشته باشد از بافت عنکبوت، تیر مرد قوی، کابوی و تروریست یک بار در امان خواهد بود',
    ],
  ),
  RolesModel(
    id: 28,
    isShow:false.obs,
    title: 'فراماسون',
    role: 1,
    isSelected: false.obs,
    description: 'فراماسون شهروندی است که هر شب آخرین نفر بیدار می‌شود و یک نفر را که حدس می‌زند شهروند باشد بیدار می‌کند. در صورت انتخاب درست باشد یک تیم شهروندی مخفی تشکیل می‌دهد و می‌تواند با استفاده از شهروند هایی که پیدا کرده در روز با مافیا مبارزه کند. در صورتی که یک مافیا به جز جاسوس و یا مستقل را بیدار کند اصطلاحا مرگ ماسونی رخ می‌دهد و همه‌ی ماسون ها از بازی خارج می‌شوند',
    options: [
      'در صورتی که فراماسون اعظم از بازی بیرون برود تایلر وظیفه بیدار کردن نفر بعدی را دارد. در صورتی که ماسون اعظم و تایلر از بازی بیرون بروند تمام اعضای تیم ماسونی باید به اتفاق نظر برسند که یک نفر را بیدار کنند',
      'اگر مورد انتخاب ساقی قرار گیرد نمی‌تواند آن شب کسی را بیدار کند',
      'بیدار کردن تایلر در شب اول بازی اجباری می‌باشد. اگر خود یا تایلر مورد انتخاب ساقی، دزد و یا افسونگر باشند درشب اول با یک شب تاخیر تایلر را شناسایی می‌کند و از شب بعد می‌توانند اقدام به بیدار کردن  یک بازیکن بکنند',
    ],
  ),
  RolesModel(
    id: 29,
    isShow:false.obs,
    title: 'تایلر',
    role: 1,
    isSelected: false.obs,
    description: 'تایلر شهروندی که در شب یکم بازی توسط توسط گرداننده با فراماسون اعظم بیدار می‌شود در حقیقت یار فراماسون است و باید به فراماسون در راستای بیدار کردن صحیح شهروند ها کمک کند',
    options: [
      'در صورتی که ماسون اعظم خروج کرده باشد ساقی، دزد و یا افسونگر تایلر را انتخاب کنند آن شب تایلر نمی‌تواند  کسی را بیدار کند'
    ],
  ),
  RolesModel(
    id: 30,
    isShow:false.obs,
    title: 'روانشناس ',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی می‌باشد که وظیفه اش شناسایی افراد منفی بازی می‌باشد و در فاز شب قدرت حذف یک بازیکن رو دارد به اینصورت که در فاز شب با اعلام گرداننده بیدار می‌شود و یک نفر را به عنوان شخصی که قرار است حذف شود نشان می‌دهد اما این عمل به تنهایی میسر نمی‌شود باید یک نفر را به عنوان تأیید دهنده به گرداننده اعلام کند اگر آن فرد تأیید دهد آن بازیکن حذف اگر عدم تأیید دهد در بازی می‌ماند. روانشناس ۱/۱۰ جعمیت شروع کننده بازی قدرت حذف دارد',
    options: [
      'بازیکنی که تأییده می‌دهد می‌تواند در فاز روز اعلام کند که تأیید یا رد کرده است بدیهی است که هر شخص دیگری می‌تواند این ادعا را انجام دهد',
      'اگر دکتر نجات دهد شخص حذف شده را در بازی می‌ماند',
      'اگر روانشناس توسط ساقی انتخاب شود گرداننده آنرا اعمال نمی‌کند و اگر ساقی شخص تأیید دهنده رو انتخاب کند بی تاثیر می‌باشد',
    ],
  ),
  RolesModel(
    id: 31,
    isShow:false.obs,
    title: 'کاپیتان',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی می‌باشد که در صورت وجود در بازی اولین نقش در فاز شب بیدار می‌شود و تاثیر بسیاری در بازی دارد چه روی قدرت شهروند و بلعکس به اینصورت که در فاز شب با اعلام گرداننده بیدار می‌شود و یک نفر را به گرداننده نشان می‌دهد با اعلام مثبت آن فرد در صورت داشتن قدرت یک قدرت بیشتر در نوبت خود از گرداننده می‌گیرد و در صورت اعلام منفی گرداننده قدرت آن فرد را از آن می‌گیرد',
    options: [
      'هیچ نقشی نمی‌تواند به ضرر کاپیتان باشد جز ناتو',
      'نقش کاپیتان ۱۲ ساعت می‌باشد و بر روی نقش های که قدرت آنها در فاز روز می‌باشد تاثیری ندارد',
    ],
  ),
  RolesModel(
    id: 32,
    isShow:false.obs,
    title: 'ساقی',
    role: 1,
    isSelected: false.obs,
    description: 'ساقی نقش مهم شهروندی است که اولین نفر در هر شب بیدار می‌شود نقش ساقی از حساسیت بالایی بر خوردار است به این خاطر که در صورت تشخیص درست می‌تواند تیمش را به جلو ببرد و در صورتی که اشتباها شهروند را انتخاب کند می‌تواند ضربه بزرگی را به شهر وارد کند. ساقی با انتخاب هر نقشی میتواند آن نقش را غیر فعال کند یا قابلیت آن نقش را برعکس کند',
    options: [
      'قابلیت ساقی ۲۴ ساعت می‌باشد',
      'هیچ نقشی جز کاپیتان نمی‌تواند بر روی ساقی تاثیر بذارد',
    ],
  ),
  RolesModel(
    id: 33,
    isShow:false.obs,
    title: 'نگهبان',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی است که هر شب یک نفر را انتخاب میکند و از او در برابر دزدی محافظت می‌کند. اگر دزد در آن شب همان شخصیت را انتخاب کند، به دزد اعلام می‌شود که نقشی ندارد',
    options: [
      'قبل از دزد بیدار می‌شود. اگر دزد او را انتخاب کند دستگیر می‌شود (در صورت نبود کاراگاه) اما اگر او دزد را انتخاب کند دزد آن شب قفل می‌شود',
      'اگر مورد انتخاب ساقی قرار گیرد قابلیتش آن شب بی تاثیر خواهد ماند',
    ],
  ),
  RolesModel(
    id: 34,
    isShow:false.obs,
    title: 'کاراگاه',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی است که می‌تواند از مافیا بودن یا نبودن یک بازیکن مطلع شود. هر شب بیدار شده و یک نفر را انتخاب میکند و گرداننده به او می‌گوید مافیاست و یا شهروند',
    options: [
      'اگر مورد انتخاب ساقی قرار گیرد تمامی استعلام های او بر عکس خواهد شد. استعلام گادفادر همیشه شهروند هست'
    ],
  ),
  RolesModel(
    id: 35,
    isShow:false.obs,
    title: 'ردگیر',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی است که آخرین نفر در فاز شب بیدار شده و می‌تواند رد قابلیت فردی که انتخاب کرده را بگیرد البته اگر آن فرد قابلیت داشته باشد به عنوان مثال: گادفادر را مورد انتخاب قرار میدهد، گرداننده کشته شب را به او نشان می‌دهد',
    options: [
      'اگر مورد انتخاب ساقی قرار بگیرد هر کس را انتخاب کند گرداننده خودش را باید نشان دهد',
      'اگر به نقشی زد در آن شب از چند قابلیت برخورد دار بود گرداننده آخرین نفر که قابلیت بر روی آن اجرا شده است را نشان می‌دهد مانند آخرین نجات دکتر',
    ],
  ),
  RolesModel(
    id: 36,
    isShow:false.obs,
    title: 'عنکبوت  ',
    role: 1,
    isSelected: false.obs,
    description: 'عنکبوت یکی از نقش های حساس شهروند است، اگر از ابیلیتی خود به درستی استفاده کند کمک بزرگی به شهر کرده است، عنکبوت می‌تواند نسبت به تعداد نفرات داخل بازی بین ۲ تا ۴ نفر را به هم ببافد،‌این تصمیم توسط عنکبوت گرفته می‌شود که می‌تواند به صورت ۲ بافت ۲ تایی یا ۱ بافت ۴ تایی انجام شود،‌ در صورتی که یکی از افراد بافته شده کشته یا به صورت رای گیری از بازی خارج شود،‌ همه افراد بافته شده با هم خارج می‌شوند. این بافته‌ی عنکبوتی توسط گرداننده اعلام می‌شود.',
    options: [
      'عنکبوت خودش را نمی‌تواند ببافد',
      'درصورتی که یک بافته کشته شده باشد و بافته دیگری توسط دکتر نجات یافته باشد، هر دو با هم کشته می‌شوند',
      'اگر ساقی عنکبوت را هدف قرار دهد، اگر عنکبوت آن شب از ابیلیتی خود استفاده کند، هیچ تاثیری در بازی ایجاد نمی‌شود'
    ],
  ),
  RolesModel(
    id: 37,
    isShow:false.obs,
    title: 'شهروند ساده',
    role: 1,
    isSelected: false.obs,
    description: 'شهروند ساده نقشی است که قابلیت خاصی در شب ندارد او باید با توجه به اتفاقات شب و روز به دنبال مافیا بگردد و با رای گیری نسبت به بیرون رفتن مافیا اقدام نماید',
    options: [],
  ),
  RolesModel(
    id: 38,
    isShow:false.obs,
    title: 'کیلر',
    role: 2,
    isSelected: false.obs,
    description: 'کیلر نقش مستقل است هر شب به دستور گرداننده از خواب بیدار میشود یک نفر را انتخاب    میکند و آن شخص کشته میشود.تیر کیلر بر روی رویین تن و محافظ نمیشیند شرط برد کیلر به این صورت است که اگر تمام مافیا ها از بازی خارج شوند یا تعداد مافیا ها با شهروندان برابر شود کیلر داخل بازی باشد کیلر بازی را میبرد به طور کلی در صورتی که برد هر تیمی در بازی رخ دهد و کیلر در بازی باشد برنده بازی است کلیر جز نامیرا های بازی میباشد',
    options: [
      'اگر توسط ساقی و افسونگر انتخاب شود قابلیت او بی اثر میشود ولی همچنان نامیرا می‌ماند',
      'اگر کیلر در ۵ نفر آخر بازی باشد حتی تنها منفی بازی باشد به عنوان برنده اعلام می‌شود',
    ],
  ),
  RolesModel(
    id: 39,
    isShow:false.obs,
    title: 'نرون',
    role: 2,
    isSelected: false.obs,
    description: 'نرون نقشی است مستقل که هر شب یک نفر را وارد لیست خود می‌کند گرداننده اسم فردی که وارد لیست شده را اعلام نمی‌کند و در هر جایی از بازی که نرون بخواهد می‌تواند لیست خود را آتش بزند و تمامی بازیکنانی که در لیست قرار داشته اند از بازی خارج می‌شوند',
    options: [
      'نرون تا زمانی که لیست خود را آتش نزده در شب نامیرا است',
      'اگر فردی در یک شب وارد لیست شود و در همان شب دکتر بازی او را انتخاب کند آن فرد از لیست پاک می‌شود',
      'شرط برد نرون، برد هر گروه در صورت وجود نرون در بازی و آتش زدن لیست خود می‌باشد و اگر در ۵ نفر آخر بازی باشد و لیست خود را نیز آتش زده باشد نیز برنده بازی می‌باشد',
      'اگر مورد انتخاب ساقی قرار بگیرد قابلیت اونشب آن بی اثر می‌باشد و اگر همان شب لیست را آتش بزند هیچ اتفاقی صورت نمی‌گیرد اما از آن لحظه به بعد نرون دیگر نامیرا نیست',
    ],
  ),
  RolesModel(
    id: 40,
    isShow:false.obs,
    title: 'جوکر',
    role: 2,
    isSelected: false.obs,
    description: 'جوکر نقشی است مستقل که در طول بازی در هر زمانی از فاز روز که از بازی حذف شود چهار بازیکن را با خود از بازی بیرون می‌برد اگر در همان لحظه بازی تمام شود جوکر برنده است اما اگر بازی ادامه پیدا کند جوکر خارج شده و بازی به حالت عادی خود بر می‌گردد',
    options: [
      'جوکر در شب نامیرا می‌باشد',
      'جوکر اگر مورد انتخاب ساقی قرار گیرد و از بازی حذف شود اعلام میشود جوکر اما به تنهایی از بازی خارج می‌شود',
    ],
  ),
];


List<RolesModel> investigatorList = [
  RolesModel(
    id: 0,
    isShow:false.obs,
    title: 'گادفادر',
    role: 0,
    isSelected: false.obs,
    description:
        'گادفادر وظیفه مدیریت تیم مافیا را به عهده دارد، انتخاب تیر مافیا به عهده اوست، استعلام گادفادر برای کاراگاه همیشه شهروند است',
    options: [
      'اگر گادفادر از بازی خارج شود رتبه بعدی مافیا، کشته شب را معرفی میکند و ابیلیتی ساقی دیگر بر روی تیر تاثیری ندارد',
      'اگر توسط ساقی انتخاب شود تیرش به سنگ میخورد',
      'اگر توسط دزد انتخاب بشود، آن شب مافیا تیر نمی‌زند چون دزد تیر گادفادر را دزدیده است',
      'گادفادر می‌تواند به هم تیمی های خود شلیک کند',
      'گادفادر بازی از نقش های اسنایپر و محقق‌ (هانتر) در کل روند بازی در امان است',
      'استعلام گادفادر در کل روند بازی برای کاراگاه منفی است',
      'در این سناریو اگر تیم مافیا از یاکوزایی (سوداگری) استفاده کند، قابلیت زدن شات را دیگر ندارد',
      'در این سناریو تا زمانی که گادفادر در بازی باشد، می‌تواند یاکوزایی (سوداگری) کند، زمانی که تیم مافیا از یاکوزایی استفاده کند، گرداننده بازی این موضوع را در فاز شب اعلام می‌کند، گادفادر بازی می‌تواند یکی از افراد خود را به قتل برساند و یک شهروند را به تیم مافیا اضافه کند، فقط زمانی می‌تواند از یاکوزایی استفاده کند که شخص موردنظر شهروند ساده یا رویین تن بازی باشد،‌ در غیر این صورت یاکوزایی انجام نمی‌شود',
    ],
  ),
  RolesModel(
    id: 1,
    isShow:false.obs,
    title: 'ناتو',
    role: 0,
    isSelected: false.obs,
    description: 'ناتو نقش است مافیایی که در طول روز به دنبال آن است تا شهروندانی که دارای نقش هستن را شناسایی کند. در این سناریو تیم مافیا اگر از ناتویی استفاده کند، قابلیت زدن شات را در آن شب ندارد',
    options: [
      'در این سناریو ناتو در کل روند بازی فقط یک بار می‌تواند از ابیلیتی خود استفاده کند',
      'استفاده از قابلیت ناتو اختیاری می‌باشد',
      'شبی که ناتویی انجام شود، گرداننده بازی در فاز شب، ناتویی را اعلام می‌کند',
      'اگر ناتو درست حدس بزند، شخص از بازی حذف می‌شود',
      'شخصی که ناتویی شده با نجات دکتر در بازی نمی‌ماند',
    ],
  ),
  RolesModel(
    id: 2,
    isShow:false.obs,
    title: 'مافیا ساده',
    role: 0,
    isSelected: false.obs,
    description: 'پایین ترین رده تیم مافیا، قابلیت خاصی ندارد و فقط شب ها بیدار می‌شود و باید کمک کند تا شهروندها را با رای گیری از بازی حذف کند',
    options: [],
  ),
  RolesModel(
    id: 2,
    isShow:false.obs,
    title: 'شیاد',
    role: 0,
    isSelected: false.obs,
    description: 'شیاد نقش مافیای بازی است که باید به دنبال کاراگاه بازی باشد،‌ در صورتی که کاراگاه بازی را هدف قرار دهد،‌استعلام کاراگاه در آن شب برای همه‌ی بازیکن ها منفی می‌شود. شیاد هر شب یک نفر را هدف قرار دهد',
    options: [],
  ),
  RolesModel(
    id: 3,
    isShow:false.obs,
    title: 'رویین تن',
    role: 1,
    isSelected: false.obs,
    description: 'رویین تن یکی از نقش های شهروندی است که در کل روند بازی از شات تیم مافیا در امان است، تیم مافیا اگر رویین تن را درست حدس بزند، می‌تواند با رویین تن یاکوزایی انجام دهد',
    options: [
      'اگر رویین تن در طول روز بازی به نامیرا بودن خود اشاره ای کند حتی غیر مستقیم توسط گرداننده بازی باید حذف شود',
    ],
  ),
  RolesModel(
    id: 4,
    isShow:false.obs,
    title: 'دکتر',
    role: 1,
    isSelected: false.obs,
    description: 'دکتر نجات دهنده شهروندان، هر شب بیدار می‌شود و به تعدادی که گرداننده می‌گویید می‌تواند بازیکنانی که احتمال می‌دهد مافیا آنها را کشته باشد را نجات دهد. در صورتی که شخصی را درست نجات دهد آن فرد در بازی می‌ماند',
    options: [
      'دکتر در کل روند بازی می‌تواند خودش را فقط ۲ بار نجات دهد',
    ],
  ),
  RolesModel(
    id: 5,
    isShow:false.obs,
    title: 'اسنایپر',
    role: 1,
    isSelected: false.obs,
    description: 'اسنایپر نقش شهروند است که در این سناریو کل روند بازی یک بار ابیلیتی دارد که یک نفر را در شب به قتل برساند',
    options: [
      ' اگر اسنایپر شهروند به قتل برساند و دکتر اسنایپر را نجات دهد، اسنایپر در امان نخواهد ماند',
      'اسنایپر در طول روز بازی شخصی را نمی‌تواند تهدید به کشتن کند در این صورت حذف می‌شود',
      'اگر اسنایپر یک شهروند را به قتل برساند خودش از روند بازی خارج می‌شود، در اصطلاح مافیایی فایربک می‌شود',
      'اگر اسنایپر یک مافیا را قتل برساند، گرداننده در فاز روز به شهروند های بازی تبریک می‌گوید',
      'اگر اسنایپر پدرخوانده‌ (گادفادر) را به قتل برساند،‌ هم اسنایپر و هم پدرخوانده در بازی خواهند ماند',
    ],
  ),
  RolesModel(
    id: 6,
    isShow:false.obs,
    title: 'کاراگاه',
    role: 1,
    isSelected: false.obs,
    description: 'نقش شهروندی است که می‌تواند از مافیا بودن یا نبودن یک بازیکن مطلع شود. هر شب بیدار شده و یک نفر را انتخاب میکند و گرداننده به او می‌گوید مافیاست و یا شهروند',
    options: [
      'در این سناریو کاراگاه باید هوشیارانه بازی کند که از نقش شیاد در امان باشد'
    ],
  ),
  RolesModel(
    id: 7,
    isShow:false.obs,
    title: 'شهروند ساده',
    role: 1,
    isSelected: false.obs,
    description: 'شهروند ساده نقشی است که قابلیت خاصی در شب ندارد او باید با توجه به اتفاقات شب و روز به دنبال مافیا بگردد و با رای گیری نسبت به بیرون رفتن مافیا اقدام نماید',
    options: [],
  ),
  RolesModel(
    id: 8,
    isShow:false.obs,
    title: 'محقق (هانتر)',
    role: 1,
    isSelected: false.obs,
    description: 'محقق نقش شهروند بازی است و اولین نقشی است که در فاز شب بیدار می‌شود، محقق در فاز شب باید اعضای مافیا را حدس بزند و خودش را به یک شحص ببافد، اگر آن شخص مافیای بازی باشد و محقق در آن شب کشته شود یا در روز با رای گیری از بازی خارج شود، شخص بافته شده نیز با محقق خارج می‌شود',
    options: [
      'اگر محقق خودش را به شهروند یا پدرخوانده بازی ببافد، هیچ اتفاقی برای آن ها نمی‌افتد',
    ],
  ),
  RolesModel(
    id: 9,
    isShow:false.obs,
    title: 'بازپرس',
    role: 1,
    isSelected: false.obs,
    description: 'بازپرس یکی از نقش های مهم و تاثیرگزار شهروندی است که کل روند بازی یک بار ابیلیتی دارد که می‌تواند ۲ نفر را در بازپرسی قرار دهد و آن ها باید قبل از شروع روز از خود دفاع کنند و بازپرس طبق دفاعیه های آنها باید تصمیم بگیرد که رای گیری لغو شود یا انجام شود، اگر بازپرس رای گیری را لغو کند، مجددا نمی‌تواند از ابیلیتی خود استفاده کند. اگر رای گیری را لغو نکند همه‌ی افراد داخل بازی باید به یکی از آن ۲ نفر رای دهند، پس از وصیت شخصی که بیشترین رای را آورده است،‌ گرداننده بازی ساید شخص را می‌خواند',
    options: [
      'بهترین عملکرد برای بازپرس شب اول بازی است زیرا که می‌تواند ساید بازی را برای شهروند ها مشخص کند',
      'اگر یکی از اشخاصی که بازپرس انتخاب کرده است در فاز شب کشته شود، بازپرسی لغو می‌شود و بازپرس مجددا می‌تواند از ابیلیتی خود در شب آینده استفاده کند',
    ],
  ),
];

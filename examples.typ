#import "lib.typ": wordc

// --- 1. 为缩略图定制的页面设置 ---
// 使用较小的宽度和自动高度，配合极窄的边距，实现紧凑构图
#set page(
  width: 18cm,    // 宽度适中，保证双栏不拥挤
  height: 7.8cm,   // 高度自动适应内容
  margin: 0.8cm,  // 窄边距
  fill: rgb("#f8fafc") // 极淡的灰蓝色背景，衬托卡片
)

// 设置高质量字体
// #set text(font: ("Libertinus Serif", "Source Han Serif SC"), lang: "en")


// --- 3. 核心展示区 (双栏布局) ---
#columns(2, gutter: 0.8em)[
  
  // --- 左栏：标准词汇卡展示 ---
  
  // 卡片 1 (青色系 - 体现长句折行和加粗)
  #wordc(
    "Ubiquitous",
    pos: "adj.",
    def: "Present, appearing, or found everywhere.",
    examples: "Smartphones have become ubiquitous in modern society.",
    accent-color: rgb("#0891b2")
  )


  // 卡片 2 (紫色系 - 体现短句和词性Tag)
  #wordc(
    "Eloquent",
    pos: "adj.",
    def: "Fluent or persuasive in speaking or writing.",
    examples: "Her eloquent speech moved the audience.",
    accent-color: rgb("#7c3aed")
  )

  // --- 右栏：对比升级卡展示 ---
  // columns 会自动换栏

  // 卡片 3 (玫红系 - 写作升级)
  #wordc(
    ("Look at", "Examine"),
    def: "To inspect someone or something closely.",
    examples: "The detective carefully examined the evidence.",
    accent-color: rgb("#db2777")
  )


  // 卡片 4 (橙色系 - 强调对比)
  #wordc(
    ("Hard", "Arduous"),
    def: "Involving or requiring strenuous effort; difficult and tiring.",
    examples: "It was an arduous journey across the mountains.",
    accent-color: rgb("#ea580c")
  )
]

// --- 底部留白，防止裁剪过紧 ---
#v(0.5em)
# ~/.config/qutebrowser/config.py

# 如果用了 autoconfig.yml，先加载；自定义设置放在它后面，避免被覆盖
config.load_autoconfig()

# 默认字体：界面和网页默认都会用 iosevka
c.fonts.default_family = "iosevka"
c.fonts.default_size = "12pt"

# 单独指定各个界面组件（可选，但推荐，避免某些地方没生效）
c.fonts.statusbar = "12pt iosevka"
c.fonts.tabs.selected = "12pt iosevka"
c.fonts.tabs.unselected = "12pt iosevka"
c.fonts.completion.entry = "12pt iosevka"
c.fonts.completion.category = "bold 12pt iosevka"
c.fonts.hints = "bold 12pt iosevka"
c.fonts.keyhint = "12pt iosevka"
c.fonts.downloads = "12pt iosevka"
c.fonts.prompts = "12pt iosevka"
c.fonts.messages.error = "12pt iosevka"
c.fonts.messages.warning = "12pt iosevka"
c.fonts.messages.info = "12pt iosevka"
c.fonts.debug_console = "12pt iosevka"

# 可选：让网页也优先使用 iosevka（网页自己的 CSS 仍可能覆盖）
c.fonts.web.family.standard = "iosevka"
c.fonts.web.family.fixed = "iosevka"
c.fonts.web.family.serif = "iosevka"
c.fonts.web.family.sans_serif = "iosevka"
c.qt.args = [
    "ignore-gpu-blocklist",
    "enable-zero-copy",
    "enable-features=VaapiVideoDecoder,VaapiVideoDecodeLinuxGL,AcceleratedVideoDecodeLinuxGL,AcceleratedVideoEncoder,Vulkan,DefaultANGLEVulkan,VulkanFromANGLE",
]
# 启用内容拦截
c.content.blocking.enabled = True

# 设置拦截方法
# 可选值: 'hosts', 'adblock', 'both', 'auto'
# 'both' 表示同时使用 hosts 和 adblock 两种方式，效果最好
c.content.blocking.method = 'both'

# ==================== Brave Adblock 过滤列表 ====================

# 配置 ABP 格式的过滤列表（仅在使用 adblock 或 both 时生效）
c.content.blocking.adblock.lists = [
    # EasyList 基础广告过滤规则
    'https://easylist.to/easylist/easylist.txt',
    # EasyPrivacy 隐私保护规则
    'https://easylist.to/easylist/easyprivacy.txt',
    # uBlock Origin 的过滤规则（额外补充）
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt',
    # 可添加自定义本地规则文件
    # os.path.expanduser('~/.config/qutebrowser/my-adblock-rules.txt'),
]

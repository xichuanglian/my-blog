<h1 class="site-meta">
  <span class="logo-line-before"><i></i></span>
  <a href="{{ config.root }}" class="brand">
      <span class="logo">
        <i class="icon-logo"></i>
      </span>
      <span class="site-title">{{ config.title }}</span>
  </a>
  <span class="logo-line-after"><i></i></span>
</h1>

{% if theme.menu %}
  <ul id="menu" class="menu">
    {% if config.swiftype_key %}
    <!--增加swiftype搜索功能-->
    <form class="menu-item menu-item-{{ itemName }}">
      <input type="text" id="st-search-input" class="st-search-input" style="width:80px;"  />
    </form>
    {% set swiftype_key = config.swiftype_key %}
    <script type="text/javascript">
    (function(w,d,t,u,n,s,e){w['SwiftypeObject']=n;w[n]=w[n]||function(){
    (w[n].q=w[n].q||[]).push(arguments);};s=d.createElement(t);
    e=d.getElementsByTagName(t)[0];s.async=1;s.src=u;e.parentNode.insertBefore(s,e);
    })(window,document,'script','//s.swiftypecdn.com/install/v1/st.js','_st');

    _st('install','{{swiftype_key}}');
    </script>
    <!--增加swiftype搜索功能end-->
    {% endif %}
    {% for name, path in theme.menu %}
      {% set itemName = name.toLowerCase() %}
      <li class="menu-item menu-item-{{ itemName }}">
        <a href="{{ url_for(path) }}">
          <i class="menu-item-icon icon-{{ itemName }}"></i> <br />
          {{ __('menu.' + itemName) }}
        </a>
      </li>
    {% endfor %}
  </ul>
{% endif %}

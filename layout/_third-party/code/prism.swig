{%- if theme.prism.enable %}
{%- set prism_languages_path = theme.vendors.prism_components or next_vendors('prism/components/') %}
<script>
window.Prism = window.Prism || {};
window.Prism.manual = true;
window.Prism.plugins.autoloader.languages_path = '{{ prism_languages_path }}';
</script>
<script{{ pjax }}>
document.querySelectorAll('pre code')
.forEach(function(node) {
    node.classList.add(node.className.split(' ').map(function(className) { return 'language-' + className }));
});
window.Prism.highlightAll(false);
</script>
{%- endif %}
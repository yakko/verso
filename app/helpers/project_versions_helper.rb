module ProjectVersionsHelper
  def swf(paperclip)
    raw [swf_baixar(paperclip), swf_assistir(paperclip)].join
  end

  def swf_baixar(paperclip)
    link_to paperclip.url, :Style=>'display:inline; float:left; width: 100px; text-align:center' do
      raw [
        image_tag('verso/Swf-64.png'),
        'Baixar',
        number_to_human_size(paperclip.size)
      ].join('<br />')
    end
  end

  def swf_assistir(paperclip)
    s = "<object width='800' height='600'
classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000'
codebase='http://fpdownload.macromedia.com/
pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'>
<param name='SRC' value='#{paperclip.url}'>
<embed src='#{paperclip.url}' width='800' height='600'></embed>
</object>"
    link_to "#", :rel=>'swf', :'data-swf-content' => s, :Style=>'display:inline; float:left; width: 100px; text-align:center' do
      raw [
        image_tag('http://aux3.iconpedia.net/uploads/57148141463140983.png'),
        'Assistir'
      ].join('<br />')
    end
  end

end

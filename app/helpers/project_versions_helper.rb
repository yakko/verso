module ProjectVersionsHelper

  def myfile(img_html, paperclip, url=nil)
    return unless paperclip.present?
    url ||= paperclip.url
    link_to raw("#{img_html} #{paperclip.original_filename} (#{number_to_human_size(paperclip.size)})"), url, :target=>'_blank'
  end
  
  def myupload(form, field, img_html, texto)
    label_tag do
      raw "#{img_html} #{texto} <br /> #{form.file_field field}"
    end
  end

  #desuso 11/nov
  def swf(paperclip)
    raw [swf_baixar(paperclip), swf_assistir(paperclip)].join
  end

  #desuso 11/nov
  def swf_baixar(paperclip)
    link_to paperclip.url, :Style=>'display:inline; float:left; width: 100px; text-align:center' do
      raw [
        image_tag('verso/Swf-32.png'),
        number_to_human_size(paperclip.size)
      ].join('<br />')
    end
  end

  #desuso 11/nov
  def swf_assistir(paperclip)
    s = "<object width='800' height='600'
classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000'
codebase='http://fpdownload.macromedia.com/
pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'>
<param name='SRC' value='#{paperclip.url}'>
<param name='wmode' value='opaque'/>
<embed src='#{paperclip.url}' wmode='opaque' width='800' height='600'></embed>
</object>"
    link_to "#", :rel=>'swf', :'data-swf-content' => s, :Style=>'display:inline; float:left; width: 100px; text-align:center' do
      raw [
        image_tag('verso/Play-32.png'),
        'Assistir'
      ].join('<br />')
    end
  end

end

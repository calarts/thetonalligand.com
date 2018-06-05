---
title: contact us
date: 2018-06-04 14:50:58 +0200
description: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero porro
  tempore voluptas voluptatibus eius a non numquam, quibusdam enim eos.
header:
  description: Everything starts with <span class="blue-text">communication</span>.
  image: img/contact_img.png
  image_alt: The chair for meeting image
  responsive_images:
    '360': img/contact_360x318.png
    '565': img/contact_565x420.png
    '848': img/contact_848x443.png
text_groups:
- name: Collaboration
  description: <span class="blue-text">contact us</span>
    <form name="contact" method="POST" netlify>
      <p>
        <label>your name <input type="text" name="name" /></label>
      </p>
      <p>
        <label>your email <input type="email" name="email" /></label>
      </p>
      <p>
        <label>your message </label>
      </p>
      <p>
        <textarea name="message"></textarea>
      </p>
      <p>
        <button type="submit">Send</button>
      </p>
    </form>
type: page

---

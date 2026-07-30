-- شغّل هذا الملف مرة واحدة فقط داخل Supabase SQL Editor
-- يضيف: نوع البكج، إخفاء السعر، وإخفاء زر الإضافة إلى السلة.

alter table public.products
  add column if not exists is_package boolean not null default false;

alter table public.products
  add column if not exists show_price boolean not null default true;

alter table public.products
  add column if not exists show_add_to_cart boolean not null default true;

-- CIB Curtain live website setup
-- Run this once in Supabase SQL Editor.

create table if not exists public.site_settings (
  id bigint primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

insert into public.site_settings (id, data)
values (1, '{}'::jsonb)
on conflict (id) do nothing;

alter table public.site_settings enable row level security;

-- Public visitors only need to READ the published website settings.
drop policy if exists "Public can read CIB Curtain settings" on public.site_settings;
create policy "Public can read CIB Curtain settings"
on public.site_settings
for select
to anon, authenticated
using (true);

-- Only logged-in Supabase Auth users can change the live settings.
drop policy if exists "Authenticated can update CIB Curtain settings" on public.site_settings;
create policy "Authenticated can update CIB Curtain settings"
on public.site_settings
for update
to authenticated
using (true)
with check (true);

-- Allows the first authenticated save if the row was removed.
drop policy if exists "Authenticated can insert CIB Curtain settings" on public.site_settings;
create policy "Authenticated can insert CIB Curtain settings"
on public.site_settings
for insert
to authenticated
with check (id = 1);

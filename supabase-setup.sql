-- Run this once in Supabase: SQL Editor > New query > paste > Run

create table if not exists public.results (
  id text primary key,
  age text not null,
  gender text not null,
  race text not null,
  places jsonb not null,
  updated_at timestamptz default now()
);

alter table public.results enable row level security;

create policy "anyone can read"   on public.results for select to anon using (true);
create policy "anyone can add"    on public.results for insert to anon with check (true);
create policy "anyone can update" on public.results for update to anon using (true) with check (true);
create policy "anyone can delete" on public.results for delete to anon using (true);

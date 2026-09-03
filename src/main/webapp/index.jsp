import React from "react";

const products = [
  {
    name: "Noir Élan Watch",
    category: "Timepieces",
    price: "$4,850",
    image:
      "https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=900&q=80",
  },
  {
    name: "Aurelia Leather Bag",
    category: "Handbags",
    price: "$2,950",
    image:
      "https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=900&q=80",
  },
  {
    name: "Maison Noir Fragrance",
    category: "Fragrance",
    price: "$420",
    image:
      "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=900&q=80",
  },
  {
    name: "Velour Signature Shoes",
    category: "Footwear",
    price: "$1,280",
    image:
      "https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=900&q=80",
  },
];

export default function LuxuryStore() {
  return (
    <div className="min-h-screen bg-[#0b0b0b] text-white">
      {/* NAVBAR */}
      <header className="border-b border-white/10">
        <div className="mx-auto flex max-w-7xl items-center justify-between px-6 py-5">
          <div className="text-xl tracking-[0.35em] font-light">
            ÉLÉGANCE
          </div>

          <nav className="hidden gap-10 text-sm text-white/70 md:flex">
            <a href="#" className="hover:text-[#d6b56d]">
              New Arrivals
            </a>
            <a href="#" className="hover:text-[#d6b56d]">
              Collections
            </a>
            <a href="#" className="hover:text-[#d6b56d]">
              Accessories
            </a>
            <a href="#" className="hover:text-[#d6b56d]">
              About
            </a>
          </nav>

          <div className="flex gap-5 text-white/70">
            <button>⌕</button>
            <button>♡</button>
            <button>🛍</button>
          </div>
        </div>
      </header>

      {/* HERO */}
      <section className="relative overflow-hidden">
        <div
          className="absolute inset-0 bg-cover bg-center opacity-50"
          style={{
            backgroundImage:
              "url(https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=80)",
          }}
        />

        <div className="absolute inset-0 bg-gradient-to-r from-black via-black/70 to-transparent" />

        <div className="relative mx-auto flex min-h-[620px] max-w-7xl items-center px-6">
          <div className="max-w-xl">
            <p className="mb-5 text-sm uppercase tracking-[0.4em] text-[#d6b56d]">
              The Art of Luxury
            </p>

            <h1 className="font-serif text-6xl leading-tight md:text-8xl">
              Timeless.
              <br />
              <span className="text-[#d6b56d]">Exceptional.</span>
            </h1>

            <p className="mt-7 max-w-md text-lg leading-8 text-white/60">
              Discover a curated collection of exceptional pieces crafted for
              those who appreciate the extraordinary.
            </p>

            <button className="mt-9 border border-[#d6b56d] bg-[#d6b56d] px-8 py-4 text-sm uppercase tracking-[0.2em] text-black transition hover:bg-transparent hover:text-[#d6b56d]">
              Explore Collection
            </button>
          </div>
        </div>
      </section>

      {/* FEATURED */}
      <section className="mx-auto max-w-7xl px-6 py-24">
        <div className="mb-12 flex items-end justify-between">
          <div>
            <p className="mb-3 text-xs uppercase tracking-[0.35em] text-[#d6b56d]">
              Curated For You
            </p>
            <h2 className="font-serif text-4xl md:text-5xl">
              Featured Collection
            </h2>
          </div>

          <button className="hidden border-b border-[#d6b56d] pb-2 text-sm text-[#d6b56d] md:block">
            View All →
          </button>
        </div>

        {/* PRODUCTS */}
        <div className="grid gap-7 sm:grid-cols-2 lg:grid-cols-4">
          {products.map((product) => (
            <article key={product.name} className="group">
              <div className="relative aspect-[4/5] overflow-hidden bg-[#151515]">
                <img
                  src={product.image}
                  alt={product.name}
                  className="h-full w-full object-cover transition duration-700 group-hover:scale-105"
                />

                <button className="absolute right-4 top-4 flex h-10 w-10 items-center justify-center rounded-full bg-black/60 backdrop-blur hover:text-[#d6b56d]">
                  ♡
                </button>

                <button className="absolute bottom-4 left-4 right-4 translate-y-16 bg-[#d6b56d] py-3 text-sm uppercase tracking-widest text-black opacity-0 transition-all duration-300 group-hover:translate-y-0 group-hover:opacity-100">
                  Add to Bag
                </button>
              </div>

              <div className="pt-5">
                <p className="text-xs uppercase tracking-widest text-white/40">
                  {product.category}
                </p>

                <div className="mt-2 flex items-center justify-between">
                  <h3 className="font-serif text-xl">{product.name}</h3>
                  <span className="text-sm text-[#d6b56d]">
                    {product.price}
                  </span>
                </div>
              </div>
            </article>
          ))}
        </div>
      </section>

      {/* COLLECTION BANNER */}
      <section className="mx-auto max-w-7xl px-6 pb-24">
        <div className="relative overflow-hidden bg-[#17130d]">
          <div className="grid md:grid-cols-2">
            <div className="flex items-center p-10 md:p-20">
              <div>
                <p className="text-xs uppercase tracking-[0.35em] text-[#d6b56d]">
                  Private Collection
                </p>

                <h2 className="mt-5 font-serif text-5xl">
                  Made for
                  <br />
                  <i>the remarkable.</i>
                </h2>

                <p className="mt-6 max-w-md leading-7 text-white/50">
                  Rare materials, meticulous craftsmanship and timeless
                  silhouettes come together in our signature collection.
                </p>

                <button className="mt-8 border border-white/30 px-7 py-3 text-sm uppercase tracking-widest transition hover:border-[#d6b56d] hover:text-[#d6b56d]">
                  Discover More
                </button>
              </div>
            </div>

            <img
              src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1200&q=80"
              alt="Luxury collection"
              className="h-[500px] w-full object-cover"
            />
          </div>
        </div>
      </section>

      {/* NEWSLETTER */}
      <section className="border-y border-white/10 py-20 text-center">
        <p className="text-xs uppercase tracking-[0.4em] text-[#d6b56d]">
          Private Access
        </p>

        <h2 className="mt-4 font-serif text-4xl">
          Enter the world of Élégance
        </h2>

        <p className="mx-auto mt-4 max-w-lg text-white/50">
          Receive invitations to private collections, exclusive releases and
          exceptional experiences.
        </p>

        <div className="mx-auto mt-8 flex max-w-md border-b border-white/30">
          <input
            type="email"
            placeholder="Your email address"
            className="flex-1 bg-transparent px-2 py-4 outline-none placeholder:text-white/30"
          />

          <button className="px-4 text-sm uppercase tracking-widest text-[#d6b56d]">
            Join
          </button>
        </div>
      </section>

      {/* FOOTER */}
      <footer className="mx-auto max-w-7xl px-6 py-12">
        <div className="grid gap-10 md:grid-cols-4">
          <div>
            <div className="text-lg tracking-[0.3em]">ÉLÉGANCE</div>
            <p className="mt-4 text-sm leading-6 text-white/40">
              A destination for timeless luxury and exceptional craftsmanship.
            </p>
          </div>

          <div>
            <h4 className="text-sm uppercase tracking-widest">Shop</h4>
            <div className="mt-5 space-y-3 text-sm text-white/40">
              <p>New Arrivals</p>
              <p>Watches</p>
              <p>Handbags</p>
              <p>Fragrance</p>
            </div>
          </div>

          <div>
            <h4 className="text-sm uppercase tracking-widest">Client Care</h4>
            <div className="mt-5 space-y-3 text-sm text-white/40">
              <p>Contact</p>
              <p>Shipping & Returns</p>
              <p>Size Guide</p>
              <p>Appointments</p>
            </div>
          </div>

          <div>
            <h4 className="text-sm uppercase tracking-widest">Follow</h4>
            <div className="mt-5 space-y-3 text-sm text-white/40">
              <p>Instagram</p>
              <p>Pinterest</p>
              <p>Facebook</p>
            </div>
          </div>
        </div>

        <div className="mt-12 border-t border-white/10 pt-6 text-xs text-white/30">
          © 2026 ÉLÉGANCE. All rights reserved.
        </div>
      </footer>
    </div>
  );
}

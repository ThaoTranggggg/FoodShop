<nav class="banner">
    <div class="categories">
        @foreach ($CATEGORIES as $CATEGORY)
            <a href="{{ route("category.search", ['slug' => $CATEGORY->slug]) }}">{{ $CATEGORY->name }}</a>
        @endforeach
    </div>
    <div class="slide-banner slide">
        <img src="{{ asset('Images/banner-1.jpg') }}" alt="">
        <img src="{{ asset('Images/banner-2.jpg') }}" alt="">
        <img src="{{ asset('Images/banner-3.jpg') }}" alt="">
    </div>
</nav>
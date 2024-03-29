<?php

use App\Category;
use App\Post;
use App\Tag;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $author1 = User::create([
            'name' => 'Aleksandar',
            'email' => 'djukicaleks91@gmail.com',
            'password' => Hash::make('password')
        ]);

        $author2 = User::create([
            'name' => 'Marko',
            'email' => 'markoo@gmail.com',
            'password' => Hash::make('password')
        ]);

        $category1 = Category::create([

            'name' => 'News'
        ]);

        $category2 = Category::create([

            'name' => 'Marketing'
        ]);

        $category3 = Category::create([

            'name' => 'Partnerships'
        ]);

        $post1 = $author1->posts()->create([

            'title' => 'We relocated our office to a new designed garage',
            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
                              when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                              ',
            'category_id' => $category1->id,
            'image' => 'posts/6.jpg'
        ]);

        $post2 = $author1->posts()->create([

            'title' => 'Best practices for minimalist design with example',
            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
                              when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                         .',
            'content' =>'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            'category_id' => $category1->id,
            'image' => 'posts/7.jpg'
        ]);

        $post3 = $author1->posts()->create([

            'title' => 'New published books to read by a product designer',
            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
                              when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                        ',
            'content' =>'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            'category_id' => $category2->id,
            'image' => 'posts/8.jpg'
        ]);

        $post4 = $author2->posts()->create([

            'title' => 'This is why it\'s time to ditch dress codes at work',
            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
                              when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                            ',
            'category_id' => $category1->id,
            'image' => 'posts/6.jpg'
        ]);

        $post5 = $author2->posts()->create([

            'title' => 'Top 5 brilliant content marketing strategies',
            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
                              when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                              ',
            'content' =>'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            'category_id' => $category2->id,
            'image' => 'posts/7.jpg'
        ]);

        $post6 = $author2->posts()->create([

            'title' => 'Congratulate and thank to Maryam for joining our team',
            'description' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, 
                              when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            'content' =>'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            'category_id' => $category3->id,
            'image' => 'posts/6.jpg'
        ]);

        $tag1 = Tag::create([
            'name' => 'job'
        ]);

        $tag2 = Tag::create([
            'name' => 'customize'
        ]);

        $tag3 = Tag::create([
            'name' => 'record'
        ]);

        $post1->tags()->attach([$tag1->id, $tag2->id]);
        $post2->tags()->attach([$tag1->id, $tag2->id]);
        $post3->tags()->attach([$tag1->id, $tag3->id]);
    }
}

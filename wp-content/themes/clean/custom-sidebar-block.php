<?php
$headings = get_headings(); ?>
<h2>Headings:</h2>
<?php
if ($headings) :
    ?>

    <ul class="sidebar-navigation">
        <?php foreach ($headings as $heading) : ?>
            <li><a class="sidebar-link" href="#<?php echo $heading['id']; ?>"><?php echo $heading['text']; ?></a></li>
        <?php endforeach; ?>
    </ul>
<?php
endif;
?>
<h2>Have an idea? Let’s discuss</h2>
<p>Contact us and tell about your project. </p>
<div class="button">
    <a href="/contact-us/">Contact us</a>
</div>

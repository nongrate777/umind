<?php
$headings = get_headings();
if ($headings) :
    ?>
    <ul class="sidebar-navigation">
        <?php foreach ($headings as $heading) : ?>
            <li><a href="#<?php echo $heading['id']; ?>"><?php echo $heading['text']; ?></a></li>
        <?php endforeach; ?>
    </ul>
<?php
endif;
?>

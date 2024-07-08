<div class="info">
    <div class="title">
        <h1><?= $information; ?></h1>
    </div>
    <div class="action_to_login">
        <a href="<?= BASE_URL . 'Login'; ?>">Login</a>
    </div>
</div>
<hr>
<div class="about_me">
    <H1>LIVROS DISPONIVEIS</H1>
    <hr>
    <table border="1" >
        <thead>
            <tr>
                <th>Livro</th>
                <th>Valor</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($list_items as $list) : ?>
                <tr>
                    <td><?= $list['name_item']; ?></td>
                    <td><?= $list['price_item']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
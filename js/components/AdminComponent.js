export default {
    template: `

    <div id="App"><h1>Admin Dashboard</h1>
    <h2>Welcome</h2>

    <nav>
  <ul>
    <li><a href="#/create">Create User</a></li>
    <li><a href="admin_edituser.php">Edit User</a></li>
    <li><a href="admin_deleteuser.php">Delete User</a></li>
    <li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>
  </ul>

</nav>
</div>
    `,

    data() {
        return {
            message: "Welcome to your Dashboard"
        }
    }
}

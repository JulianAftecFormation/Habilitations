using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Habilitations.model;

namespace Habilitations.controller
{
    public class UserController
    {
        public User GetUserById(int userId)
        {
            // Logique pour récupérer l'utilisateur depuis une source de données
            // Par exemple, retourner un utilisateur simulé
            return new User { Id = userId, Name = "Jean Dupont", Email = "jean.dupont@example.com" };
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EBuy.Models;

namespace EBuy.Controllers
{
    public class UserController : Controller
    {
        private EBuyContext db = new EBuyContext();

        //
        // GET: /User/

        public ActionResult Index()
        {
            return View(db.rybs.ToList());
        }

        //
        // GET: /User/Details/5

        public ActionResult Details(decimal id = 0)
        {
            ryb ryb = db.rybs.Find(id);
            if (ryb == null)
            {
                return HttpNotFound();
            }
            return View(ryb);
        }

        //
        // GET: /User/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /User/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ryb ryb)
        {
            if (ModelState.IsValid)
            {
                db.rybs.Add(ryb);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ryb);
        }

        //
        // GET: /User/Edit/5

        public ActionResult Edit(decimal id = 0)
        {
            ryb ryb = db.rybs.Find(id);
            if (ryb == null)
            {
                return HttpNotFound();
            }
            return View(ryb);
        }

        //
        // POST: /User/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ryb ryb)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ryb).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ryb);
        }

        //
        // GET: /User/Delete/5

        public ActionResult Delete(decimal id = 0)
        {
            ryb ryb = db.rybs.Find(id);
            if (ryb == null)
            {
                return HttpNotFound();
            }
            return View(ryb);
        }

        //
        // POST: /User/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            ryb ryb = db.rybs.Find(id);
            db.rybs.Remove(ryb);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
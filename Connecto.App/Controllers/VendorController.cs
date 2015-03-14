﻿using System.Collections.Generic;
using Connecto.App.Models;
using Connecto.App.ModelValidator;
using Connecto.BusinessObjects;
using Connecto.Common.Enumeration;
using Connecto.Repositories;
using System;
using System.Web.Mvc;

namespace Connecto.App.Controllers
{
    public class VendorController : Controller
    {
        private readonly VendorRepository _repo = ConnectoFactory.VendorRepository;
        public JsonResult Get()
        {
            var items = _repo.GetAll();
            return Json(items, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetItem(int id)
        {
            var item = _repo.GetVendorById(id);
            return Json(item, JsonRequestBehavior.AllowGet);
        }

        //
        // POST: /Vendor/Create
        [HttpPost]
        public JsonResult Create(Vendor item)
        {
            var errors = new VendorModelValidator(item).Validate();
            if (errors.Count > 0) return Json(new ConnectoValidation { Status = "Failure", Exceptions = errors }, JsonRequestBehavior.AllowGet);

            item.LocationId = 1;
            item.VendorGuid = Guid.NewGuid();
            item.CreatedBy = User.UserId();
            item.CreatedOn = DateTime.Now;
            item.Status = RecordStatus.Active;
            _repo.Add(item);
            return Json(true, JsonRequestBehavior.AllowGet);
        }

        //
        // POST: /Vendor/Edit/5
        [HttpPost]
        public ActionResult Edit(Vendor item)
        {
            item.EditedBy = User.UserId();
            item.EditedOn = DateTime.Now;
            _repo.Edit(item);
            return Json(true, JsonRequestBehavior.AllowGet);
        }

        //
        // POST: /Vendor/Delete/5
        [HttpPost]
        public ActionResult Delete(int id)
        {
            _repo.Delete(id, User.UserId());
            return Json(true, JsonRequestBehavior.AllowGet);
        }

        //
        // GET: /Vendor/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            return View();
        }
        public ActionResult List()
        {
            return View();
        }
        public ActionResult Edit()
        {
            return View();
        }
    }
}

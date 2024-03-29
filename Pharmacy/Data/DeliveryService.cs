using System;
using System.Collections.Generic;
using System.Linq;

namespace Pharmacy.Data
{
    public class DeliveryService : IDeliveryService
    {
        private readonly Connection _context;

        public DeliveryService(Connection context)
        {
            _context = context;
        }

        public void CreatePickupRequest(int productId, int quantity, int warehouseId, int requesterId)
        {
            try
            {
                var request = new PickupRequest
                {
                    ProductID = productId,
                    Quantity = quantity,
                    RequestDate = DateTime.UtcNow,
                    RequesterID = requesterId,
                    Status = "Pending",
                    WarehouseID = warehouseId // Добавляем присвоение warehouseId
                };

                _context.PickupRequest.Add(request);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw new Exception("An error occurred while saving the pickup request.", ex);
            }
        }



        public IEnumerable<PickupRequest> GetPendingPickupRequests()
        {
            return _context.PickupRequest.Where(r => r.Status == "Pending").ToList();
        }

        public void ApprovePickupRequest(int requestId, int warehouseId)
        {
            var request = _context.PickupRequest.Find(requestId);
            if (request != null)
            {
                request.Status = "Approved";
                _context.SaveChanges();
            }
        }

        public void RejectPickupRequest(int requestId)
        {
            var request = _context.PickupRequest.Find(requestId);
            if (request != null)
            {
                request.Status = "Rejected";
                _context.SaveChanges();
            }
        }
    }
}

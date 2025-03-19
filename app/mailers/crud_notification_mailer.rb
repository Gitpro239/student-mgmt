class CrudNotificationMailer < ApplicationMailer
 
  def create_notification(object)
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def update_notification(object)
    # @greeting = "Hi"
    # mail to: "to@example.org"
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "A new entry for #{object.class} has been created"
  end

  def delete_notification(object)
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

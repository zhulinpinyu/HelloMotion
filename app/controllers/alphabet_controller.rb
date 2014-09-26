class AlphabetController < UIViewController
  def viewDidLoad
    super

    self.title = "字母表"
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @table.backgroundColor = UIColor.greenColor
    self.view.addSubview @table

    @table.dataSource = self
    @table.delegate = self
    @data = ("A".."Z").to_a
  end

  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTabBarSystemItem(UITabBarSystemItemContacts,tag: 1)
    self
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @data.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: @reuseIdentifier)
    end
    cell.textLabel.text = @data[indexPath.row]
    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    alert = UIAlertView.alloc.init
    alert.message = "#{@data[indexPath.row]}"
    alert.addButtonWithTitle "OK"
    alert.show
  end
end
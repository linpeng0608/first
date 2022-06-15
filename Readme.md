#目录

inventories: 资产目录。定义ip分组

playbooks: ansible的playbooks

roles: 定义用于执行的任务，注意，如果是别人开发的或者官方开发的role。把role下载下来放在这里。搞明白吃透。

#关于测试

role肯定需要调试，但凡不是正式使用。每个role下面建一个test的目录。将测试用的inventories文件放在这里面。

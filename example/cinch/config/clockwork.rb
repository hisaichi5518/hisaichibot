module Clockwork
  handler do |job|
    job.call
  end

  job = Proc.new {
    Clockwork.manager.config[:message].reply 'hisaichi5518: 集合時間間近ナウ'
  }

  # 平日実行task
  %w[monday tuesday wednesday thursday friday].each do |wday|
    every(1.week, job, at: "#{wday} 18:25")
  end
end

let g:rails_gem_projections = {
            \ "factory_bot": {
            \   "spec/factories/*.rb": {
            \     "command": "factory",
            \     "template": "FactoryBot.define do\n  factory :%s do\n  end\nend",
            \     "alternate": "app/models/%s.rb",
            \     "related": "db/schema.rb#%p",
            \     "affinity": "model"
            \   }
            \ },
            \ "carrierwave": {
            \   "app/uploaders/*_uploader.rb": {
            \     "command": "uploader",
            \     "template": "module %SUploader < CarrierWave::Uploader::Base\nend",
            \     "affinity": "model",
            \     "test": "spec/uploaders/%s_uploader_spec.rb"
            \   }
            \ },
            \ "decorator": {
            \   "app/decorators/*_decorator.rb": {
            \     "command": "decorator",
            \     "template": "module %SDecorator\nend",
            \     "related": "app/models/%s.rb",
            \     "affinity": "model",
            \     "test": "spec/decorators/%s_decorator_spec.rb"
            \   }
            \ },
            \ "sidekiq": {
            \   "app/workers/*_worker.rb": {
            \     "command": "worker",
            \     "template": "class %SWorker\n  include Sidekiq::Worker\n\n  def perform()\n  end\nend",
            \     "related": "app/models/%s.rb",
            \     "affinity": "model",
            \     "test": "spec/decorators/%s_decorator_spec.rb"
            \   }
            \ }}

let g:rails_projections = {
            \ "app/batches/*.rb": {
            \   "command": "batch",
            \   "template": "class %S\nend",
            \   "test": "spec/batches/%s_spec.rb"
            \ },
            \ "app/controllers/concerns/*.rb": {
            \   "command": "controllerconcern",
            \   "template": "module %S\nend",
            \   "test": "spec/controllers/concerns/%s_spec.rb"
            \ },
            \ "app/models/concerns/*.rb": {
            \   "command": "modelconcern",
            \   "template": "module %S\nend",
            \   "test": "spec/models/concerns/%s_spec.rb"
            \ }}

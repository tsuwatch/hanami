module Hanami
  class CLI
    module Commands
      module Db
        # @since x.x.x
        # @api private
        class Rollback < Command
          requires "model.sql"

          desc "Rollback the database"

          option :steps, desc: "Steps to rollback the database", default: 1

          example [
            "          # Rollback only one version (default)",
            "--steps=2 # Rollbacks two versions"
          ]

          # @since x.x.x
          # @api private
          def call(steps: nil, **options)
            context = Context.new(steps: steps.to_i, options: options)

            rollback_database(context)
          end

          private

          # @since x.x.x
          # @api private
          def rollback_database(context)
            require "hanami/model/migrator"
            Hanami::Model::Migrator.rollback(steps: context.steps)
          end
        end
      end
    end
  end
end

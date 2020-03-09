PROJECT = rabbitmq_sns_plugin
PROJECT_DESCRIPTION = RabbitMQ SNS Plugin

define PROJECT_ENV
[
	{notifications_enabled, true},
	{notifications_exchange, <<"aws.sns.notifications">>}
]
endef

DEPS = rabbit_common rabbit amqp_client rabbitmq_management rabbitmq_aws
TEST_DEPS = rabbitmq_ct_helpers rabbitmq_ct_client_helpers

DEP_EARLY_PLUGINS = rabbit_common/mk/rabbitmq-early-plugin.mk
DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk

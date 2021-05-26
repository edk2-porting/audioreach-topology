include(`util/util.m4') dnl
dnl AR_MODULE_LOG(index, sgidx, container-idx, iid,  maxip-ports, max-op-ports, in-ports, outports, src-mod, src-port, dst-mod, dst-port,
dnl log-code, log-tap-point, log-mode)
define(`AR_MODULE_LOG',
`'
`SectionVendorTuples."NAME_PREFIX.logger$1_tuples" {'
`        tokens "audio_reach_tokens"'
`'
`        tuples."word.u32_data" {'
`                AUDIOREACH_TKN_U32_MODULE_INSTANCE_ID STR($4)'
`                AUDIOREACH_TKN_U32_MODULE_ID STR(MODULE_ID_LOG)'
`                AUDIOREACH_TKN_U32_MAX_IP_PORTS STR($5)'
`                AUDIOREACH_TKN_U32_MAX_OP_PORTS STR($6)'
`                AUDIOREACH_TKN_U32_IN_PORTS STR($7)'
`                AUDIOREACH_TKN_U32_OUT_PORTS STR($8)'
`                AUDIOREACH_TKN_U32_SRC_MODULE_INSTANCE_ID STR($9)'
`                AUDIOREACH_TKN_U32_SRC_MODULE_OP_PORT_ID STR($10)'
`                AUDIOREACH_TKN_U32_DST_MODULE_INSTANCE_ID STR($11)'
`                AUDIOREACH_TKN_U32_DST_MODULE_IN_PORT_ID STR($12)'
`                AUDIOREACH_TKN_U32_LOG_CODE STR($13)'
`                AUDIOREACH_TKN_U32_LOG_TAP_POINT_ID STR($14)'
`                AUDIOREACH_TKN_U32_LOG_MODE STR($15)'
`        }'
`}'
`'
`SectionData."NAME_PREFIX.logger$1_data" {'
`        tuples "NAME_PREFIX.logger$1_tuples"'
`}'
`'
`SectionWidget."NAME_PREFIX.logger$1" {'
`        index STR($1)'
`        type "buffer"'
`        no_pm "true"'
`        event_type "1"'
`        event_flags "15"'
`        subseq "10"'
`        data ['
`                "NAME_PREFIX.sub_graph$2_data"'
`                "NAME_PREFIX.container$3_data"'
`                "NAME_PREFIX.logger$1_data"'
`        ]'
`}') dnl
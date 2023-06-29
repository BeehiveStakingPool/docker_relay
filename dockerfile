FROM inputoutput/cardano-node:latest
ENV CARDANO_NODE_SOCKET_PATH=/data/socket/node.socket
ENTRYPOINT ["cardano-node", "run", "+RTS", "-N", "-A16m", "-qg", "-qb", "-RTS", "--topology", "/data/config/topology.json", "--database-path", "/data/db", "--socket-path", "/data/socket/node.socket", "--host-addr", "0.0.0.0", "--port", "3001", "--config", "/data/config/config.json" ]

# Checklist de deploy remoto

## Antes do deploy

- [ ] Local funcionando
- [ ] Volumes identificados
- [ ] Estratégia de backup definida
- [ ] Estratégia de restore testada
- [ ] Secrets fora do Git
- [ ] Domínio definido
- [ ] TLS definido
- [ ] Autenticação definida
- [ ] Firewall (UFW) configurado para bloquear portas 8000 e 5055 do público, expondo apenas 80/443
- [ ] Custos estimados

## Plataforma

Escolher uma:

- [ ] VPS com Docker Compose
- [ ] Railway
- [ ] Render
- [ ] Fly.io
- [ ] DigitalOcean Droplet

Evitar:

- [ ] Plataforma sem volume persistente local, salvo se houver storage externo compatível

## Pós-deploy

- [ ] Web UI abre via HTTPS
- [ ] API responde
- [ ] Banco persiste após restart
- [ ] Arquivos persistem após restart
- [ ] Logs disponíveis
- [ ] Backup funcionando
- [ ] Provider de IA testado
- [ ] Primeiro notebook criado

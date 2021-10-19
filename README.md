# Pimcore Development

Adapted from [Pimcore Skeleton](https://github.com/pimcore/skeleton)

## Getting Started
+ Clone this repo
    + git clone https://github.com/mjnewman/pimcore-development
+ Run Docker Compose
    + docker-compose up -d
+ Connect to the PHP-FPM container
    + docker exec -it php-fpm bash
+ Install vendor files
    + composer install
+ Install Pimcore
    + vendor/bin/pimcore-install --mysql-username=pimcore --mysql-password=pimcore --mysql-database=pimcore --mysql-host-socket=db
+ Rebuild Pimcore classes
    + bin/console pimcore:deployment:classes-rebuild -c -d
+ Change file owner
    + chown -R www-data:www-data .
+ _Optional:_ Run container setup scripts
    + ./scripts/container_setup.sh

### Pimcore should now be available at:
+ https://localhost
+ https://localhost/admin

### Docker notes
+ Change nginx localhsot port if desired
+ Disable utility containers if desired
    + php-fpm-debug
    + adminer
+ Change container & volume names if desired
+ Do not commmit docker-compose.yml changes    

### Useful Pimcore Commands
+ bin/console pimcore:deployment:classes-rebuild -c -d
+ bin/console cache:clear --env=dev
+ bin/console pimcore:cache:clear

## Notes
+ All code should adhere to the [PSR-12 standard](https://www.php-fig.org/psr/psr-12/)
+ Do not commit changes to docker-compose.yml
+ Do not commit vendor/ directory


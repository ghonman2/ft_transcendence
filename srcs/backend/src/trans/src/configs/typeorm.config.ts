import { TypeOrmModuleOptions } from "@nestjs/typeorm";

export const typeOrmConfig : TypeOrmModuleOptions = {
    type : 'postgres',
    host : 'postgres',
    port : 5432,
    username : process.env.POSTGRES_USER,
    password : process.env.POSTGRES_PASSWORD,
    database : process.env.POSTGRES_DB,
    entities : [__dirname + '/../**/*.entity.{js,ts}'],
    synchronize : true,
}
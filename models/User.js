module.exports = (sequelize, DataType) => {
  const User = sequelize.define('User', { 
    id: { 
      type: DataType.INTEGER(10).UNSIGNED,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    userid: { 
      type: DataType.STRING(24),
      allowNull: false,
      unique: true,
    },
    userpw: {
    type: DataType.STRING(24),
    allowNull: false,
    },
    username: {
    type: DataType.STRING(16),
    allowNull: false,
    },
    email: {
      type: DataType.STRING(40),
      allowNull: false,
      validate: {
        isEmail: true,
      },
    },
    status: {
      type: DataType.ENUM,
      /* 
      0:탈퇴
      1:유휴
      2:일반
      3:우대
      7:관리자
      8:관리자
      9:최고관리자
      */
      values: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
      allowNull:false,
    },
  }, {
    charset: 'utf8',
    collate: 'utf8_general_ci',
    tableName: 'user', 
    paranoid: true,
  }
  );
  return User;
}
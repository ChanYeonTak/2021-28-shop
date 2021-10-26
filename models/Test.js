module.exports = (sequelize, DataType) => {
  const Test = sequelize.define('Test', {
    name: {
      type: DataType.STRING(255),
      allowNull: false,
    }
  }, {
    charset: 'utf8',
    collate: 'utf8_general_ci',
    tableName: 'board',
    timestamps: true,
    paranoid: true,
  });

  return Test;
};
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addColumn('board', 'user_id', {
      type: Sequelize.INTEGER(10).UNSIGNED,
      allowNull: true,
      reference: { 
        model:'User',
        key:'id',
      },
      onUpdate: 'CASCADE',
      onDelete: 'CASCADE'
    });
    /* await queryInterface.addColumn('user', 'addrPost', {
      type: Sequelize.CHAR(5),
    });
    await queryInterface.addColumn('user', 'addrRoad', {
      type: Sequelize.STRING(255),
    });
    await queryInterface.addColumn('user', 'addrJibun', {
      type: Sequelize.STRING(255),
    });
    await queryInterface.addColumn('user', 'addrComment', {
      type: Sequelize.STRING(255),
    });
    await queryInterface.addColumn('user', 'addrDetail', {
      type: Sequelize.STRING(255),
    }); */
  },
  down: async (queryInterface, _Sequelize) => {
    // await queryInterface.dropTable('users');
  },
};

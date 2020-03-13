package yrc.zcc.jh.ssm.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import yrc.zcc.jh.ssm.pojo.Score;
import yrc.zcc.jh.ssm.pojo.ScoreExample;

public interface ScoreMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    long countByExample(ScoreExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int deleteByExample(ScoreExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int insert(Score record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int insertSelective(Score record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    List<Score> selectByExample(ScoreExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    Score selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int updateByExampleSelective(@Param("record") Score record, @Param("example") ScoreExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int updateByExample(@Param("record") Score record, @Param("example") ScoreExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int updateByPrimaryKeySelective(Score record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table score
     *
     * @mbg.generated Thu Mar 12 18:17:24 CST 2020
     */
    int updateByPrimaryKey(Score record);
}
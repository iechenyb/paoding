package com.cyb.paoding;

import net.paoding.analysis.analyzer.PaodingAnalyzer;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.Query;
/**
 * 每次编译需要删除项目下的.compile文件夹
 * 词的优先级高于字
 * @author DHUser
 *
 */
public class AnaSentence {
	private static String QUERY = "zhangwang社会现象我又定义了一个词啥事儿我信阳毛尖你外号是小李子的语文河南我的名字你们个是他的那样开户或者交易我自己定义的词陈远豹";//你们中华人民共和国的陈远豹或者小李子

	public static void main(String[] args) throws Exception {
		// 将庖丁封装成符合Lucene要求的Analyzer规范
		Analyzer analyzer = new PaodingAnalyzer();
		String queryString = QUERY;
		QueryParser parser = new QueryParser("", analyzer);
		Query query = parser.parse(queryString);
		System.out.println("Searching for: " + query.toString());
	}
}

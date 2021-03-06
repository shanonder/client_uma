package com.icday.database.net.data {

	/**
	 * 此类由CodeGenerateUtil自动生成
	 * md5:f67d8abd5c0270cf2983938580c6b3f7
	 */
	import flash.utils.ByteArray;
	import com.icday.util.ArrayUtil;
	public class PackData{
		/**
		 * 唯一ID
		 */
		public var type:int;
		/**
		 * 开启长度
		 */
		public var openLength:int;
		public var itemList:Array;

		public function PackData(){
			super();
		}

		public static function read(bytes :ByteArray , data : PackData):PackData{
			data.type = bytes.readShort();
			data.openLength = bytes.readShort();
			data.itemList = ArrayUtil.read(bytes);
			return data;
		}

		public static function write(bytes :ByteArray , data : PackData):ByteArray{
			bytes.writeShort(data.type);
			bytes.writeShort(data.openLength);
			ArrayUtil.write(bytes ,data.itemList);
			return bytes;
		}

	}
}
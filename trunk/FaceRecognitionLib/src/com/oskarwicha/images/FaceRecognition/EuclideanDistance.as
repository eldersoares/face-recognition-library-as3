package com.oskarwicha.images.FaceRecognition
{

	internal final class EuclideanDistance implements IDistanceMeasure
	{
		public function EuclideanDistance()
		{
		}

		/**
		 * Oblicza dystans miądzy dwoma wektorami przechowywanymi
		 * w obiektach klasy <code>FeatureVector</code>.
		 * Funkcja niezbedna w celu implementacji interfejsu
		 * <code>DistanceMeasure</code>.
		 *
		 * @param fv1 Pierwszy z wektorów
		 * @param fv2 Drugi z wektorów
		 * @return Dystans miedzy wektorem <code>fv1</code> a <code>fv2</code>
		 *
		 */
		public function DistanceBetween(fv1:FeatureVector, fv2:FeatureVector):Number
		{
			var num:int = fv1.getFeatureVector().length;
			num = (fv2.getFeatureVector().length > num ? fv2.getFeatureVector().length : num);
			var dist:Number = 0;
			for (var i:int = 0; i < num; i++)
			{
				dist += ((fv1.getFeatureVector()[i] - fv2.getFeatureVector()[i]) * (fv1.getFeatureVector()[i] - fv2.getFeatureVector()[i]));
			}
			//trace("Odległość miedzy wektorami = " + Math.sqrt(dist));
			return Math.sqrt(dist);
		}
	}
}
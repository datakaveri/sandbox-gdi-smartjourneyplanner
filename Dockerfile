FROM private-registry.iudx.org.in/gdi-sandbox:gdal-base-1.0.1

COPY . ${HOME}
USER root
RUN pip3 install scipy seaborn pysheds geopandas rasterio folium rioxarray leafmap whitebox graphh dash dash-leaflet localtileserver

USER ${NB_USER}

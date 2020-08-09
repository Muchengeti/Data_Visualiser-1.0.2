# RRI User Manual

In order for the the Figshare data visualiser to function there are certain guidlines that must be followed when uploading datasets to Figshare. This is because the server that scans the data on the RRI database looks for very specific things in the files added in order to extract the data into a database.

The collection/database that the website is configured to extract data from is [Figshare](https://figshare.com/collections/A_high_temperature_superconducting_HTS_wire_critical_current_database/2861821). More specifically the database with the id `2861821`. If this ID is ever changed due to shifting the RRI account or some other reason a code change will unfortunately be required. Luckily the chance of this ID changing is almost nil.

## Datasets

While operating the server will scan the RRI Figshare database every **30 minutes**. This 30 minute interval is configurable only through code. However, this operation is extremely quick and efficient as most times there will be no change in the RRI Figshare database. If any new or updated datasets are detected they will be cached to the database. The server will **always** both cache and display the most recent version of a dataset regardless of any other configuration on Figshare.

![](./img/User_manual_figshare_datasets.jpg)

All the datasets in the RRI Figshare Database currently as of 18/10/2018. As you can see although SuperOx 2G has a more recent version Figshare displays the older version with a yellow highlight. The server ignores this and caches the most recent version (01/05/2018).

## Dataset Files

### File Names

When caching the server is only concerned with the Excel files that have a value at the start. A few **examples** of files that will be used to extract data are:

- `0T temperature dependence.xlsx`
- `1T angle dependences.xlsx`
- `90° field dependences.`

The important parts of these files names are the **value and the unit** at the front and the **`xlsx` extension** on the end. The value and unit tell the server one of the fixed variables of the experiment, acceptable units are `K`, `T` and `°` with no unit defaulting to angle. The Excel extension is important so we don't get mixed up with other files types.

The dependence part is not important as we deduce that by the one variable that was not fixed. However we recommend keeping the file names consistent across datasets.

### File Contents

In the spreadsheet the **tabs** should each have a value and unit as they are used to find the second fixed variable. Acceptable units are `K`, `T` and `°` with no unit defaulting to angle.

Every header in the spreadsheets should match the following exactly:

- Temperature(k)
- Field (T)
- Angle (°)
- Ic/w (A/cm)
- Ic (A)
- n
- V0 (µV)
- V1 (µV/A)
- Hall field (T)
- Hall angle (°)

The order does not matter. The _set_ headers are not used and therefore not required. If any of the required headers are missing or incorrectly spelled there are no guarantees on what the output could be. Values of `--` are considered null by the system and **should be included** else some lines may be connected where they are not supposed to be.

![](./img/User_manual_figshare_file.jpg)

An example of a correctly formatted file in the AMSC Amperium® Type 8700 dataset.

## Useful Contacts

These are people/organisations that during the development of this project we have been liaising with either on your behalf or not:

### Jobs @ ECS

- jobs@ecs.vuw.ac.nz

They currently control everything to do with the GitLab. If access is required or something needs to be changed they are who you should contact. They are also responsible for the http://htsdb.ecs.vuw.ac.nz/ domain. Anything regarding this domain should also go through them. 

### University Web Team

- nathan.irwin@vuw.ac.nz

Nathan was our contact with the web team and handled relationships between our site and the current RRI site. Nathan should be the current contact relating to this and if he's not able to help he will point you towards someone else. The University Web Team is responsible for the https://www.victoria.ac.nz/robinson/hts-wire-database URL. This points to a redirect to our current Development Server, and will need to be updated to redirect to the client's new AWS server. 

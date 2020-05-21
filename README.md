# Device tree for Maple (Xperia XZ Premium)

## IMPORTANT
### If you are building for dual sim then :
Change this in lineage_maple.mk
```
IS_MAPLE_DSDS := true
```

### If you are building for single sim then :
Change this in lineage_maple.mk
```
IS_MAPLE_DSDS := false
```

### Carrier VoLTE ?
Change the value to true or false depending on your Carrier.

In lineage_maple.mk:
```
    ## If Carrier does NOT provide VoLTE
    WITH_VOLTE := false
```
```
    ## If Carrier provides VoLTE
    WITH_VOLTE := true
```

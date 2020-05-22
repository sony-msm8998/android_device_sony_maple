# Device tree for Maple (Xperia XZ Premium)

## IMPORTANT
### If you are building for dual sim then :
Change this in lineage_maple.mk
```
    # 5th line
5   IS_MAPLE_DSDS := true
```

### If you are building for single sim then :
Change this in lineage_maple.mk
```
    # 5th line
5   IS_MAPLE_DSDS := false
```

### Carrier VoLTE ?
Change the value to true or false depending on your Carrier.

In lineage_maple.mk:
```
    ### 6th line
    ## If Carrier does NOT provide VoLTE
6   WITH_VOLTE := false
```
```
    ### 6th line
    ## If Carrier provides VoLTE
6   WITH_VOLTE := true
```

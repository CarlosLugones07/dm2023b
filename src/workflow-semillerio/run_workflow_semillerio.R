# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillero/z111_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow-semillero/z721_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-semillero/z731_FE_historia.r")
source("~/dm2023b/src/workflow-semillero/z741_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillero/z751_HT_lightgbm.r")
source("~/dm2023b/src/workflow-semillero/z795_ZZ_final_semillerio.r")
source("~/dm2023b/src/workflow-semillero/z796_HB_semillerios_hibridacion.r")

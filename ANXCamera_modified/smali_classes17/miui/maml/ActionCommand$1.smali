.class synthetic Lmiui/maml/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

.field static final synthetic $SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

.field static final synthetic $SwitchMap$miui$maml$SoundManager$Command:[I

.field static final synthetic $SwitchMap$miui$maml$data$VariableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->values()[Lmiui/maml/ActionCommand$FolmeCommand$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v2, Lmiui/maml/ActionCommand$FolmeCommand$Type;->TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v3, Lmiui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v4, Lmiui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v4}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    :try_start_4
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :goto_4
    :try_start_5
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :goto_5
    :try_start_6
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    :try_start_7
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    :goto_7
    invoke-static {}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->values()[Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    :try_start_8
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v4

    :goto_8
    :try_start_9
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v4

    :goto_9
    invoke-static {}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->values()[Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    :try_start_a
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v4

    :goto_a
    :try_start_b
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v4

    :goto_b
    :try_start_c
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v4

    :goto_c
    :try_start_d
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v5, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v4

    :goto_d
    const/4 v4, 0x5

    :try_start_e
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v5

    :goto_e
    :try_start_f
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v5

    :goto_f
    :try_start_10
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v5

    :goto_10
    :try_start_11
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v5

    :goto_11
    :try_start_12
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v5

    :goto_12
    :try_start_13
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v5

    :goto_13
    :try_start_14
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v5

    :goto_14
    :try_start_15
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v5

    :goto_15
    :try_start_16
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v5

    :goto_16
    :try_start_17
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v5

    :goto_17
    invoke-static {}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->values()[Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    :try_start_18
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v5

    :goto_18
    :try_start_19
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    sget-object v6, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v5

    :goto_19
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    :try_start_1a
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v5

    :goto_1a
    :try_start_1b
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v5

    :goto_1b
    :try_start_1c
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v5

    :goto_1c
    :try_start_1d
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v5

    :goto_1d
    :try_start_1e
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v4

    :goto_1e
    invoke-static {}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->values()[Lmiui/maml/ActionCommand$AnimationProperty$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    :try_start_1f
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v4

    :goto_1f
    :try_start_20
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v4

    :goto_20
    :try_start_21
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v4

    :goto_21
    :try_start_22
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationProperty$Type:[I

    sget-object v5, Lmiui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$AnimationProperty$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v4

    :goto_22
    invoke-static {}, Lmiui/maml/SoundManager$Command;->values()[Lmiui/maml/SoundManager$Command;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    :try_start_23
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v4

    :goto_23
    :try_start_24
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v4

    :goto_24
    :try_start_25
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v4

    :goto_25
    :try_start_26
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$SoundManager$Command:[I

    sget-object v5, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v5}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v4

    :goto_26
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    :try_start_27
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v4

    :goto_27
    :try_start_28
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v4

    :goto_28
    :try_start_29
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v4

    :goto_29
    :try_start_2a
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    sget-object v5, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v4

    :goto_2a
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    :try_start_2b
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    sget-object v5, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v4

    :goto_2b
    invoke-static {}, Lmiui/maml/data/VariableType;->values()[Lmiui/maml/data/VariableType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    :try_start_2c
    sget-object v4, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v5, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v0

    :goto_2c
    :try_start_2d
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v4, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v0

    :goto_2d
    :try_start_2e
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v0

    :goto_2e
    :try_start_2f
    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v0

    :goto_2f
    return-void
.end method

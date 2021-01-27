EntityCommon = {TempPhysParams = {mass = 0, density = 0}, TempPhysicsFlags = {flags_mask = 0, flags = 0}, TempSimulationParams = {max_time_step = 0.02}}

---* Creates a new table that is derived class of parent entity.
---@return table entity
function MakeDerivedEntity(_DerivedClass, _Parent) end

---* Creates a new table that is derived class of parent entity.
---| The Child's Properties will override the ones from the parent
---@return table entity
function MakeDerivedEntityOverride(_DerivedClass, _Parent) end

---* Processes an entity event broadcast.
---| Example `BroadcastEvent(self, "Used");`
---@param sender entity
---@param Event  entity
function BroadcastEvent(sender, Event) end

---* Dumps all entity identifiers (EntityId), names, classes, positions and angles, which are currently used in the map, to console.
---| Eg. `[userdata: 00000002]..name=Grunt1 clsid=Grunt pos=1016.755,1042.764,100.000 ang=0.000,0.000,1.500`
function DumpEntities() end

---* Used to make an Entity AI Targetable
function MakeTargetableByAI(entity) end

function MakeAICoverEntity(entity) end

---* Used to make an Entity Killable
function MakeKillable(entity) end

function MakeRenderProxyOptions(entity) end

---* makes an OnUsed event for designers on an entity...
---| usage:
---| MyEntity = { ... whatever you usually put here ... }
---| MakeUsable(MyEntity)
---| function MyEntity:OnSpawn() ...
---| function MyEntity:OnReset()
---|   self:ResetOnUsed()
---|   ...
---| end
---@param entity table
function MakeUsable(entity) end

---* Adds a bPickable property to the entity properties table to add a basic pickable functionality to a given entity.
function MakePickable(entity) end

function MakeThrownObjectTargetable(entity) end

function AddInteractLargeObjectProperty(entity) end

---* Adds Properties Required to make an Entity Spawnable
function MakeSpawnable(entity) end

---* Setup the collision filtering for the entity
function SetupCollisionFiltering(entity) end

---* Get the collision filtering for the entity
function GetCollisionFiltering(entity) end

---* Apply the collision filtering for the entity
function ApplyCollisionFiltering(entity, filtering) end

---* Physicalizes an entity based on the given entity slot and physics properties.
function EntityCommon.PhysicalizeRigid(entity, nSlot, Properties, bActive) end

---* Compare entities by name (for table.sort)
function CompareEntitiesByName(ent1, ent2) end

---@return function CompareEntitiesByDistanceFromPoint
---@param point vector
function MakeCompareEntitiesByDistanceFromPoint(point) end

---* Called by Pool System when an Entity is bookmarked for pool usage
---| Gives us its EntityId and PropertiesInstance tables for logic-driven utilities
function OnEntityBookmarkCreated(entityId, propertiesInstance) end

---* EI Added - To allow the possibility of an action menu appearing
function MakeActionable(entity) end
